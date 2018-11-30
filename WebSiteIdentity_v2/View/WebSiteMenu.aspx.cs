using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteIdentity_v2
{
    public partial class WebSiteMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    StatusMessage.Text = string.Format("Olá {0}!!", User.Identity.GetUserName());
                    StatusMessage.Visible = true;
                }
                else
                {
                    StatusMessage.Visible = false;
                }
            }

        }
    }
}