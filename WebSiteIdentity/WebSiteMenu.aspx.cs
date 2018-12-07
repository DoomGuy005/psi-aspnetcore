using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteIdentity
{
    public partial class WebSiteMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string msg;

            if (!IsPostBack)
            {
                msg = "";
                if (Session["msgErro"] != null)
                {
                    msg = Session["msgErro"].ToString();
                }
                if (User.Identity.IsAuthenticated)
                {
                    if (msg == "")
                    {
                        StatusMessage.Text = string.Format("Olá {0}!!", User.Identity.GetUserName());
                        StatusMessage.Visible = true;
                    }
                    else
                    {
                        StatusMessage.Text = string.Format("Olá {0}!!. {1}", User.Identity.GetUserName(), msg);
                        StatusMessage.Visible = true;
                        Session["msgErro"] = "";
                    }
                }
                else
                {
                    if (msg == "")
                    {
                        StatusMessage.Visible = false;
                    }
                    else
                    {
                        StatusMessage.Text = msg;
                        StatusMessage.Visible = true;
                        Session["msgErro"] = "";
                    }
                }

            }

        }
    }
}