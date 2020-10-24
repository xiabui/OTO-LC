using System;

namespace Models
{
    public class Product
    {
        public string ProductName { get; set; }
        public int CatId { get; set; }
        public int Amount { get; set; }
        public string Price { get; set; }
        public bool HasEvent { get; set; }
        public string ProductImage { get; set; }
        public bool Used { get; set; }
        public string From { get; set; }
        public string CarType { get; set; }
        public float MileAge { get; set; }
        public float GasCap { get; set; }
        public int NumberCap { get; set; }
        public string EngineenType { get; set; }
        public string CatName { get; set; }
    }
}
