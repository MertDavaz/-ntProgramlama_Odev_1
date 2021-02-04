using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İntProgramlama_Odev_1
{
    public partial class KullaniciOzelSayfa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("~/KullaniciGirisKayit");
            }
        }

        protected void cikis_yap_Click(object sender, EventArgs e)
        {
            Session["KullaniciAdi"] = null;
            Response.Redirect("~/KullaniciGirisKayit");
        }
    }
}