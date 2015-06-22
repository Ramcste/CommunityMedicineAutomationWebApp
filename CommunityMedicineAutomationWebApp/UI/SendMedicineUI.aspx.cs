using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomationWebApp.BLL;

namespace CommunityMedicineAutomationWebApp.UI
{
    public partial class SendMedicineUI : System.Web.UI.Page
    {
        CenterManager centerManager=new CenterManager();

        MedicineManager medicineManager=new MedicineManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLoadedDistrictDropDownList();
                GetLoadedThanaDropDownList();
                GetLoadedCenterDropDownList();
                GetLoadedMedicineDropDownList();
                
            }
        }

        protected void medicnieAddButton_Click(object sender, EventArgs e)
        {

        }

        protected void districtDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
          

            GetLoadedThanaDropDownList();
            
        }

        protected void thanaDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
           

           GetLoadedCenterDropDownList();

        }


        public void GetLoadedThanaDropDownList()
        {
            int id = Convert.ToInt16(districtDropDownList.SelectedValue);
            thanaDropDownList.DataSource = centerManager.GeTthanaAccordingToDistrictName(id);
            thanaDropDownList.DataValueField = "Id";
            thanaDropDownList.DataTextField = "Name";
            thanaDropDownList.DataBind();


        }


        public void GetLoadedCenterDropDownList()
        {
            int id = Convert.ToInt16(thanaDropDownList.SelectedValue);
            centerDropDownList.DataSource = centerManager.GetAllCentersByThana(id);
            centerDropDownList.DataValueField = "Id";
            centerDropDownList.DataTextField = "Name";
            centerDropDownList.DataBind();

        }

        public void GetLoadedDistrictDropDownList()
        {
            districtDropDownList.DataSource = centerManager.GetDistrictList();
            districtDropDownList.DataValueField = "Id";
            districtDropDownList.DataTextField = "Name";
            districtDropDownList.DataBind();

        }


        public void GetLoadedMedicineDropDownList()
        {
            medicineDropDownList.DataSource = medicineManager.GetAll();
            medicineDropDownList.DataValueField = "Id";
            medicineDropDownList.DataTextField = "Name";
            medicineDropDownList.DataBind();



        }
    
    }
}