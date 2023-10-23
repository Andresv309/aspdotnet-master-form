using master_form.Entities;
using master_form.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master_form.Views.Pages
{
    public partial class Support : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["userRole"] is null) || Session["userRole"].ToString() != UserRole.Client.ToString())
            {
                Response.Redirect("Login.aspx");
            }


            if (Session["userName"] != null)
            {
                formPersonName.Text = Session["userName"].ToString();
                formPersonEmail.Text = Session["userEmail"].ToString();
                formPersonPhone.Text = Session["userPhoneNumber"].ToString();
            }
        }

        protected void formSubmit_Click(object sender, EventArgs e)
        {
            EmailForm emailForm = new EmailForm()
            {
                Name = formPersonName.Text.Trim(),
                Email = formPersonEmail.Text.Trim(),
                Phone = formPersonPhone.Text.Trim(),
                Subject = formPersonSubject.Text.Trim(),
                Body = formPersonMessage.Text.Trim()
            };

            EmailSenderDotNet emailSender = new EmailSenderDotNet();
            Boolean emailSendStatus = emailSender.SendEmail(emailForm);

            if (emailSendStatus)
            {
                formEmailSendStatus.Text = "Correo enviado exitosamente.";
            } else
            {
                formEmailSendStatus.Text = "Algo falló en el envío, intentalo nuevamente.";
            }


        }
    }
}