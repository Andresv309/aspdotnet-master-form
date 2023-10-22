using master_form.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Web;
using System.Web.Services.Description;

namespace master_form.Services
{
    public class EmailSenderDotNet
    {
        public Boolean SendEmail(EmailForm emailForm)
        {
            var smtpClient = new SmtpClient("smtp.gmail.com", 587)
            {
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential("explorifyavcv@gmail.com", "qemh bvki wrww ecpa")
            };

            // string emailBody = $"{emailForm.Name} {emailForm.Email} {emailForm.Phone} {emailForm.Body}";
            string emailBody = $@"
                <!DOCTYPE html>
                <html>
                <head>
                    <style>
                        body {{
                            font-family: Arial, sans-serif;
                            background-color: #f4f4f4;
                        }}
                        .container {{
                            max-width: 600px;
                            margin: 0 auto;
                            padding: 20px;
                            background-color: #ffffff;
                            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                        }}
                        h1 {{
                            color: #333;
                        }}
                        p {{
                            font-size: 16px;
                            color: #555;
                        }}
                    </style>
                </head>
                <body>
                    <div class='container'>
                        <h1>Contact Information</h1>
                        <p><strong>Name:</strong> {emailForm.Name}</p>
                        <p><strong>Email:</strong> {emailForm.Email}</p>
                        <p><strong>Phone:</strong> {emailForm.Phone}</p>
                        <h1>Message</h1>
                        <p>{emailForm.Body}</p>
                    </div>
                </body>
                </html>
            ";


            var email = new MailMessage(emailForm.Email, "explorifyavcv@gmail.com")
            {
                Subject = emailForm.Subject,
                Body = emailBody,
                IsBodyHtml = true,
            };

            try
            {
                smtpClient.Send(email);

                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception caught in SendEmail(): {0}",
                    ex.ToString());

                return false;
            }
        }


    }
}