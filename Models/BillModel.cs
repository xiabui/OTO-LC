using System;
using System;
using System.Collections.Generic;
using System.Text;

namespace Models
{
    public class BillModel
    {
        public int bill_id { get; set; }
        public DateTime buy_date { get; set; }
        public int product_order { get; set; }
        public int order_id { get; set; }
        public int amount { get; set; }
        public float prince { get; set; }
        public float total { get; set; }
        public int status_id { get; set; }
    }
}
