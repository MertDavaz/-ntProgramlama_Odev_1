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
    public partial class KullaniciKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void KayitOlButton_Click(object sender, EventArgs e)
        {
            String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
            using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
            {
                try
                {

                    SqlCommand komut = new SqlCommand("INSERT INTO kullanicilar (KullaniciAdi, Sifre, Ad, Soyad, Mail, Telefon, Cinsiyet) VALUES ('"+KayitNickTextBox.Text+ "','" + KullaniciSifreTextBox.Text + "','" + KayitAdiTextBox.Text + "','" + KayitSoyadTextBox.Text + "','" + KayitMailTextBox.Text + "','" + KayitTelTextBox.Text + "', '" + KayitCinsiyetTextBox.Text + "' ) ", Baglanti);
                    Baglanti.Open();
                    komut.ExecuteNonQuery();
                    Baglanti.Close();
                    KayitBasariliLabel.CssClass = "text-success";
                    KayitBasariliLabel.Text = "Kayıt Başarılı";

                }
                catch (SqlException)
                {
                    KayitBasariliLabel.CssClass = "text-danger";
                    KayitBasariliLabel.Text="Kullanıcı Adı Daha Önce Alınmış !";
                }
            }            
        }
    }
}