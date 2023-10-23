using master_form.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master_form.Views.Layouts
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["UserName"] != null)
            {
                loginLink.Visible = false;

                authPanel.Visible = true;
                profileDropdown.Visible = true;
                profileImage.Src = HttpContext.Current.Session["userProfilePhoto"].ToString();

                if (HttpContext.Current.Session["userRole"].ToString() == UserRole.Admin.ToString())
                {
                    repositoryLink.Visible = true;
                }

                if (HttpContext.Current.Session["userRole"].ToString() == UserRole.Client.ToString())
                {
                    SupportLink.Visible = true;
                }
            }



        }

        protected void profileLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("/Views/Pages/Index.aspx");
        }
    }
}