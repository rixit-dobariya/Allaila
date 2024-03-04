using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Allaila.Helpers
{
    public class User
    {
        public string firstName;
        public string lastName;
        string password;
        public string email;
        public string phoneNo;
        string userRoleId;

        public User(string firstName, string lastName, string email, string phoneNo)
        {
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.phoneNo = phoneNo;
        }
    }
}