using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MVC_DataAccessLayer;

namespace Website_LC
{
    
    public partial class AddProduct : System.Web.UI.Page
    {
        
        DL_Product productDL = new DL_Product();
        DL_Catogory catogoryDL = new DL_Catogory();
        DL_User userDL = new DL_User();
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Session["username"]?.ToString();
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = catogoryDL.GetData();
                ddlCarCat.DataSource = dt;
                ddlCarCat.DataValueField = "cat_id";
                ddlCarCat.DataTextField = "cat_name";
                ddlCarCat.DataBind();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string longSize = "", wideSize = "", heightSize = "", frontWideSize = "", backWideSize = "";
                int flag = 0;
                for(int i = 0; i < txtSize.Text.Length; i++)
                {
                    if(flag == 0)
                    {
                        if (txtSize.Text[i] != 'x')
                            longSize += txtSize.Text[i];
                        else
                        {
                            flag = 1;
                            continue;
                        }
                            
                    }
                    if (flag == 1)
                    {
                        if (txtSize.Text[i] != 'x')
                            wideSize += txtSize.Text[i];
                        else
                        {
                            flag = 2;
                            continue;
                        }
                            
                    }
                    if (flag == 2)
                    {
                        heightSize += txtSize.Text[i];
                    }
                }
                flag = 0;

                for(int i = 0; i < txtLength.Text.Length; i++)
                {
                    if(flag == 0)
                    {
                        if (txtLength.Text[i] != 'x')
                            frontWideSize += txtLength.Text[i];
                        else
                        {
                            flag = 1;
                            continue;
                        }
                            
                    }

                    if (flag == 1)
                    {
                        backWideSize += txtLength.Text[i];
                    }
                }

                string sTenfile = FileUpload1.FileName;
                Models.ProductModel productOb = new Models.ProductModel();
                productOb.ProductName = txtProductName.Text;
                productOb.CountryMade = txtXuatXu.Text;
                productOb.YearMade = int.Parse(txtNamSX.Text);
                productOb.Price = txtGiaBan.Text;
                productOb.Amount = int.Parse(txtAmount.Text);
                productOb.CatId = int.Parse(ddlCarCat.SelectedValue);
                productOb.Used = ddlStatus.SelectedIndex == 0 ? false : true;
                productOb.MileAge = productOb.Used == false ? 0 : int.Parse(txtRunMile.Text);
                productOb.Long = float.Parse(longSize);
                productOb.Wide = float.Parse(wideSize);
                productOb.Height = float.Parse(heightSize);
                productOb.FrontWideWheelbase = float.Parse(frontWideSize);
                productOb.BackWideWheelbase = float.Parse(backWideSize);
                productOb.WeightNonLoad = float.Parse(txtHeavy.Text);
                productOb.NumberCapacity = int.Parse(txtSeat.Text);
                productOb.EngineenType = txtEngineenType.Text;
                productOb.CylinderCapacity = float.Parse(txtXiLanh.Text);
                productOb.MaximumPower = txtMaxPower.Text;
                productOb.MaximumTorque = txtMomen.Text;
                productOb.GasCapacity = float.Parse(txtFuel.Text);
                productOb.PowerSteering = txtGiamXoc.Text;
                productOb.GasConsumptionAvg = float.Parse(txtNhienLieu.Text);
                productOb.NumberOfColor = int.Parse(txtColor.Text);
                productOb.DayLight = txtDayLight.Text;
                productOb.LightSensor = txtLightSensor.Text;
                productOb.FogLight = txtFogLight.Text;
                productOb.WashLight = txtLightWash.Text;
                productOb.WheelSize = float.Parse(txtWheelSize.Text);
                productOb.SitMaterial = txtSeatMaterial.Text;
                productOb.Camera = int.Parse(txtCamera.Text);
                productOb.LongWheelbase = int.Parse(txtLongWheel.Text);
                productOb.ProductImage = sTenfile;

                productDL.AddProduct(productOb, userDL.GetUserID(username));
                FileUpload1.SaveAs(Server.MapPath("~/Images/") + sTenfile);
                Response.Redirect("Product.aspx");
            }
            else
            {
                Response.Write("<script>alert('Product image is required.')</script>");
            }
        }

        protected void FileUpload1_DataBinding(object sender, EventArgs e)
        {
           
        }
    }
}