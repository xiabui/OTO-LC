using System;
using System.Collections.Generic;
using System.Text;

namespace Models
{
    public class ContactModel
    {
        public int ID { get; set; }
        public string Fullname { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Content { get; set; }
    }
}
