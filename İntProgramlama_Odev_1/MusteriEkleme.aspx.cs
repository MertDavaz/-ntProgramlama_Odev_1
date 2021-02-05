using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İntProgramlama_Odev_1
{
    public partial class MusteriEkleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("~/KullaniciGirisKayit");
            }
        }

        protected void MusteriEkleButton_Click(object sender, EventArgs e)
        {
            String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
            using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
            {
                try
                {

                    SqlCommand komut = new SqlCommand("INSERT INTO Musteri (ad, soyad, eposta, tel, adres) VALUES ('" + MusteriAdi.Text + "','" + MusteriSoyadi.Text + "','" + MusteriEposta.Text + "','" + MusteriTel.Text + "','" + MusteriAdres.Text + "') ", Baglanti);
                    Baglanti.Open();
                    komut.ExecuteNonQuery();
                    Baglanti.Close();
                    Response.Redirect("~/Musteriler");

                }
                catch (SqlException)
                {
                    KayitBasarisiz.Text = "Müşteri Kaydı Sistemde Bulunmakta !";
                }
            }
        }
    }

}