using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace İntProgramlama_Odev_1
{
    public partial class KullaniciGirisKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["KullaniciAdi"] != null && Request.Cookies["KullaniciSifre"] != null)
                {
                    KullaniciAdiMailTextBox.Text = Request.Cookies["KullaniciAdi"].Value;
                    KullaniciSifreTextBox.Attributes["value"] = Request.Cookies["KullaniciSifre"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }
        protected void GirisButton_Click(object sender, EventArgs e)
        {
            String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
            using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM kullanicilar WHERE KullaniciAdi ='" + KullaniciAdiMailTextBox.Text + "'  AND Sifre = '" + KullaniciSifreTextBox.Text + "' OR Mail ='"+KullaniciAdiMailTextBox.Text+"' AND Sifre = '" + KullaniciSifreTextBox.Text + "'" , Baglanti);
                Baglanti.Open();
                SqlDataAdapter sda = new SqlDataAdapter(komut);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0 )
                {
                    cerez();
                    Session["KullaniciAdi"] = dt.Rows[0]["KullaniciAdi"].ToString();
                    Response.Redirect("~/GirisSonrasiArsiv.aspx");
                }
                else
                {
                    UyariLabel.Text = "Kullanıcı Adı ya da Şifre Hatalı";
                }
                
            }
        }
        private void cerez()
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["KullaniciAdi"].Value = KullaniciAdiMailTextBox.Text;
                Response.Cookies["KullaniciSifre"].Value = KullaniciSifreTextBox.Text;

                Response.Cookies["KullaniciAdi"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["KullaniciSifre"].Expires = DateTime.Now.AddDays(15);
            }
            else
            {
                Response.Cookies["KullaniciAdi"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["KullaniciSifre"].Expires = DateTime.Now.AddDays(-1);
            }
        }
    }
}