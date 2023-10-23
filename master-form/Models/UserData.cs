using master_form.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace master_form.Models
{
    public static class UserData
    {
        private static List<User> users = new List<User>()
        {
            new User
            {
                Name = "Juan Pérez",
                Email = "juan@example.com",
                Password = "123456",
                Role = UserRole.Admin,
                PhoneNumber = "555-123-4567"
            },
            new User
            {
                Name = "María Gómez",
                Email = "maria@example.com",
                Password = "123456",
                Role = UserRole.Admin,
                PhoneNumber = "555-987-6543"
            },
            new User
            {
                Name = "Carlos Rodríguez",
                Email = "carlos@example.com",
                Password = "123456",
                Role = UserRole.Client,
                PhoneNumber = "555-234-5678"
            },
            new User
            {
                Name = "Luisa Martínez",
                Email = "luisa@example.com",
                Password = "123456",
                Role = UserRole.Client,
                PhoneNumber = "555-876-5432"
            },
            new User
            {
                Name = "Pedro Sánchez",
                Email = "pedro@example.com",
                Password = "123456",
                Role = UserRole.Client,
                PhoneNumber = "555-345-6789"
            }
        };

        public static User GetUserByEmail(string email)
        {
            return users.FirstOrDefault(user => user.Email == email);
        }
    }
}