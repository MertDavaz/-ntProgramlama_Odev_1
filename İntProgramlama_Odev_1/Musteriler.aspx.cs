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
    public partial class Musteriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("~/KullaniciGirisKayit");
            }

            griddoldur();
        }

        void griddoldur() {
            String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
            using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Musteri", Baglanti);
                Baglanti.Open();
                SqlDataAdapter sda = new SqlDataAdapter(komut);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Baglanti.Close();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddCommand")
            {
                Response.Redirect("~/ArsivEkleme.aspx?id=" + e.CommandArgument);
            }
            else if (e.CommandName == "DeleteCommand")
            {
                String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
                using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
                {
                    SqlCommand sorgu = new SqlCommand("DELETE FROM Musteri WHERE id="+e.CommandArgument, Baglanti);
                    Baglanti.Open();
                    if(sorgu.ExecuteNonQuery() > 0)
                    {
                        griddoldur();
                    }
                    Baglanti.Close();
                }
            }
        }
    }
}