using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace master_form.Entities
{
    public enum UserRole
    {
        Admin,
        Client
    }
    public class User
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public UserRole Role { get; set; } = UserRole.Client;
        public string PhoneNumber { get; set; }
        public string ProfilePhoto { get; set; } = @"https://t4.ftcdn.net/jpg/05/90/45/35/360_F_590453560_ugMuPncnGYB6XnJqmC8xiPQx4eg3jmMD.jpg";

    }
}