using System;
using System.Collections.Generic;
using System.Text;

namespace Models
{
    public class OrderModel
    {
        public int OrderID { get; set; }
        public int ProductID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string CredentialID { get; set; }
        public DateTime DateValid { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Province { get; set; }
        public string City { get; set; }
        public string Ward { get; set; }
        public string Address { get; set; }
        public int StoreID { get; set; }
        public int StoreID2 { get; set; }
    }
}
