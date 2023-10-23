using master_form.Controllers;
using master_form.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master_form.Views.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["userRole"] is null))
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void loginSubmit_Click(object sender, EventArgs e)
        {
            UserCredentials userCredentials = new UserCredentials()
            {
                Email = loginEmail.Text.Trim(),
                Password = loginPassword.Text.Trim(),
            };

            LoginValidation loginValidation = new LoginValidation();
            Boolean isUserAuth = loginValidation.ValidateUser(userCredentials);

            if (isUserAuth)
            {
                Response.Redirect("Index.aspx");
            } else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Invalid Input",
                    "Swal.fire({" +
                    "icon: 'error'," +
                    "title: 'Credenciales Inválidas'," +
                    "text: 'Email o Contraseña Incorrectos!'})",
                    true);
            }


        }
    }
}