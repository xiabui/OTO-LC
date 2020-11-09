using System;

namespace Models
{
    public class ProductModel
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public int CatId { get; set; }
        public int Amount { get; set; }
        public string Price { get; set; }
        public bool HasEvent { get; set; }
        public string ProductImage { get; set; }
        public bool Used { get; set; }
        public string CountryMade { get; set; }
        public float MileAge { get; set; }
        public int YearMade { get; set; }
        //Product Spec
        public float Height { get; set; }
        public float Long { get; set; }
        public float Wide { get; set; }
        public float LongWheelbase { get; set; }
        public float FrontWideWheelbase { get; set; }
        public float BackWideWheelbase { get; set; }
        public float MinimumTurningRadius { get; set; }
        public float GroundClearance { get; set; }
        public float WeightNonLoad { get; set; }
        public int NumberCapacity { get; set; }
        public string EngineenType { get; set; }
        public float CylinderCapacity { get; set; }
        public string MaximumPower { get; set; }
        public string MaximumTorque { get; set; }
        public float GasCapacity { get; set; }
        public string GearBox { get; set; }
        public string Actuate { get; set; }
        public string PowerSteering { get; set; }
        public string FrontSuspension { get; set; }
        public string BackSuspension { get; set; }
        public string FrontBackTyer { get; set; }
        public string FrontBackBreak { get; set; }
        public float GasConsumptionAvg { get; set; }
        //Product Outfit
        public int NumberOfColor { get; set; }
        public string DayLight { get; set; }
        public string LightSensor { get; set; }
        public string FogLight { get; set; }
        public string WashLight { get; set; }
        public float WheelSize { get; set; }
        public string SitMaterial { get; set; }
        public int Camera { get; set; }
        public string CatName { get; set; }
    }
}
