using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBase
{
    class User
    {
        public int id { get; set; }

        private string login, pass;

        public string Login
        {
            get { return login; }
            set { login = value; }
        }
        public string Pass
        {
            get { return pass; }
            set { pass = value; }
        }

        public User() { }

        public User(string login, string pass)
        {
            this.login = login;
            this.pass = pass;
        }
    }
}
