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
    public partial class ArsivEkleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ArsivEkleButton_Click(object sender, EventArgs e)
        {
            String BaglantiAdi = ConfigurationManager.ConnectionStrings["KullaniciVeritabani"].ConnectionString;
            using (SqlConnection Baglanti = new SqlConnection(BaglantiAdi))
            {
                SqlCommand komut = new SqlCommand("INSERT INTO IsBilgi (per_id, mus_id, aciklama, ucret) VALUES ('" + Session["KullaniciAdi"] + "','" + Request.QueryString["id"] + "','" + Aciklama.Text + "','" + Ucret.Text + " TL') ", Baglanti);
                Baglanti.Open();
                komut.ExecuteNonQuery();
                Baglanti.Close();
                Response.Redirect("~/GirisSonrasiArsiv");
            }
        }
    }
}