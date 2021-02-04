using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İntProgramlama_Odev_1
{
    public partial class KullaniciHesabim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
               Response.Redirect("~/KullaniciGirisKayit");
            }
            if (!IsPostBack)
            {
                String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
                using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
                {
                    SqlCommand komut = new SqlCommand("SELECT * FROM kullanicilar WHERE KullaniciAdi ='" + Session["KullaniciAdi"].ToString() + "'", Baglanti);
                    Baglanti.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(komut);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    if (dt.Rows.Count != 0)
                    {
                        KayitNickTextBox.Text = dt.Rows[0][0].ToString();
                        KullaniciSifreTextBox.Text = dt.Rows[0][1].ToString();
                        KayitAdiTextBox.Text = dt.Rows[0][2].ToString();
                        KayitSoyadTextBox.Text = dt.Rows[0][3].ToString();
                        KayitMailTextBox.Text = dt.Rows[0][4].ToString();
                        KayitTelTextBox.Text = dt.Rows[0][5].ToString();
                        KayitCinsiyetTextBox.Text = dt.Rows[0][6].ToString();
                    }
                    else
                    {
                        Response.Redirect("~/KullaniciGirisKayit");
                    }
                    Baglanti.Close();
                }
            }
        }
        protected void GuncelleButton_Click(object sender, EventArgs e)
        {
            String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
            using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
            {
                SqlCommand komut = new SqlCommand("UPDATE Kullanicilar SET Sifre='" + KullaniciSifreTextBox.Text + "', Ad='" + KayitAdiTextBox.Text + "', Soyad='" + KayitSoyadTextBox.Text + "', Mail='" + KayitMailTextBox.Text + "', Telefon='" + KayitTelTextBox.Text + "', Cinsiyet='" + KayitCinsiyetTextBox.Text + "' WHERE KullaniciAdi='" + Session["KullaniciAdi"].ToString() + "'", Baglanti);
                Baglanti.Open();
                komut.ExecuteNonQuery();
                Baglanti.Close();
            }
            GuncellemeBasarili.Text="Güncelleme Başarılı";
        }
    }
}