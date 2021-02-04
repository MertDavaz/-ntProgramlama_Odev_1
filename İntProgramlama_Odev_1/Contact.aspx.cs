using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İntProgramlama_Odev_1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["KullaniciAdi"] != null)
            {
                this.MasterPageFile = "~/KullaniciOzelSayfa.Master";
            }
            else if (Session["KullaniciAdi"] == null)
            {
                this.MasterPageFile = "~/Site.Master";
            }
        }
    }
}