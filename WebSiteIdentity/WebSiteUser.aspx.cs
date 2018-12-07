using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteIdentity
{
    public partial class WebSiteUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    StatusText.Text = string.Format("Olá {0}!!", User.Identity.GetUserName());
                    LoginStatus.Visible = true;
                }
                else
                {
                    Session["msgErro"] = "Acesso não Permitido";
                    Response.Redirect("~/WebSiteMenu.aspx");
                }
            }

        }
    }
}