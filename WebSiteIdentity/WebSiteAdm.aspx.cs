using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteIdentity
{
    public partial class WebSiteAdm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    IList<Claim> Claims = new List<Claim>();
                    ClaimsPrincipal currentPrincipal = Thread.CurrentPrincipal as ClaimsPrincipal;
                    if (currentPrincipal.IsInRole("Administrador"))
                    {
                        StatusText.Text = string.Format("Olá {0}!!", User.Identity.GetUserName());
                        LoginStatus.Visible = true;
                    }
                    else
                    {
                        Session["msgErro"] = "Acesso não Permitido. usuário não é administrador.";
                        Response.Redirect("~/WebSiteMenu.aspx");
                    }
                }
                else
                {
                    Session["msgErro"] = "Acesso Anônimo não Permitido";
                    Response.Redirect("~/WebSiteMenu.aspx");
                }
            }

        }
    }
}