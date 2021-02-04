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
    public partial class GirisSonrasiArsiv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("~/KullaniciGirisKayit");
            }
            griddoldur();
        }

        void griddoldur() 
        {
            String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
            using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
            {
                SqlCommand komut = new SqlCommand("SELECT Musteri.ad, Musteri.soyad, Musteri.tel, Musteri.eposta, Musteri.adres, Isbilgi.id, IsBilgi.aciklama, IsBilgi.ucret, (Kullanicilar.Ad + ' ' + Kullanicilar.Soyad) AS 'personel' FROM IsBilgi " +
                                                    "INNER JOIN Kullanicilar ON IsBilgi.per_id = Kullanicilar.KullaniciAdi " +
                                                    "INNER JOIN Musteri ON IsBilgi.mus_id = Musteri.id", Baglanti);
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
            if (e.CommandName == "DeleteCommand")
            {
                String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
                using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
                {
                    SqlCommand sorgu = new SqlCommand("DELETE FROM IsBilgi WHERE id=" + e.CommandArgument, Baglanti);
                    Baglanti.Open();
                    if (sorgu.ExecuteNonQuery() > 0)
                    {
                        griddoldur();
                    }
                    Baglanti.Close();
                }
            }
        }
    }

}