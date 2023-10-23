using master_form.Entities;
using master_form.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace master_form.Controllers
{
    public class LoginValidation
    {
        public Boolean ValidateUser (UserCredentials userCredentials)
        {
            User userFound = UserData.GetUserByEmail(userCredentials.Email);

            if (userFound == null) return false;

            Boolean isUserValid = userFound.Password == userCredentials.Password;

            if (!isUserValid) return false;

            HttpContext.Current.Session["userName"] = userFound.Name;
            HttpContext.Current.Session["userEmail"] = userFound.Email;
            HttpContext.Current.Session["userPhoneNumber"] = userFound.PhoneNumber;
            HttpContext.Current.Session["userProfilePhoto"] = userFound.ProfilePhoto;
            HttpContext.Current.Session["userRole"] = userFound.Role;

            return true;
        }

    }
}