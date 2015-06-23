using CommunityMedicineAutomationWebApp.BLL;
using CommunityMedicineAutomationWebApp.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CommunityMedicineAutomationWebApp.UI
{
    public partial class StockReportUI : System.Web.UI.Page
    {
        MedicineQuantity medicineQuantity = new MedicineQuantity();
        MedicineManager medicineManager = new MedicineManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            GetDataLoadedInGridView();

        }
        public void GetDataLoadedInGridView()
        {
            DataTable dt = new DataTable();
            List<MedicineQuantity> medicineList = medicineManager.GetMedicineQuantities();

            dt.Columns.Add("Medicine Name", typeof(string));
            dt.Columns.Add("Present Stock", typeof(string));



            foreach (MedicineQuantity quantity in medicineList)
            {
                DataRow dr = dt.NewRow();
                dr["Medicine Name"] = quantity.Name;
                dr["Present Stock"] = quantity.Quantity;
                dt.Rows.Add(dr);
            }
            medicineStockGridView.DataSource = dt;
            medicineStockGridView.DataBind();
        }

        
        
    }
}