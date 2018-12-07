using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace WebSiteIdentity
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CadastrarClick(object sender, EventArgs e)
        {
            // Construtor padrão do UserStore utiliza a string de conexão "DefaultConnection"
            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = UserName.Text };

            IdentityResult result = manager.Create(user, Password.Text);

            if (result.Succeeded) // Se autenticou, registra o logon no OWIN
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
                Response.Redirect("~/WebSiteMenu.aspx");
            }
            else
            {
                StatusMessage.Text = result.Errors.FirstOrDefault();
            }


        }
    }
}