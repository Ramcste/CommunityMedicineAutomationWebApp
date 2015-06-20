using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomationWebApp.BLL;
using CommunityMedicineAutomationWebApp.Models;

namespace CommunityMedicineAutomationWebApp.UI
{
    public partial class CenterEntryUI : System.Web.UI.Page
    {
        CenterManager centerManager =new CenterManager();

        Center center=new Center();

       
        List<Thana> thanas = new List<Thana>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetLoadedDropDownlists();


                thanaDropDownList.DataSource =centerManager.GeTthanaAccordingToDistrictName(int.Parse(districtDropDownList.SelectedValue.ToString()));

                thanaDropDownList.DataTextField = "Name";
                thanaDropDownList.DataValueField = "Id";

                thanaDropDownList.DataBind();
            }
        }

        protected void saveCenterEntryButton_OnClick(object sender, EventArgs e)
        {
            center.Name = nameTextBox.Text;

            center.DistrictId = int.Parse(districtDropDownList.SelectedValue.ToString());

            center.ThanaId = int.Parse(thanaDropDownList.SelectedValue.ToString());

            string message = centerManager.Insert(center);

            label6.Text = message;
        }


        public void GetLoadedDropDownlists()
        {
            //thanaDropDownList.DataSource = centerManager.GetThanaList();
            //thanaDropDownList.DataTextField = "Name";
            //thanaDropDownList.DataValueField = "Id";
            //thanaDropDownList.DataBind();



            districtDropDownList.DataSource = centerManager.GetDistrictList();
            districtDropDownList.DataTextField = "Name";
            districtDropDownList.DataValueField = "Id";
            districtDropDownList.DataBind();
        }

        protected void districtDropDownList_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(districtDropDownList.SelectedValue.ToString());
            thanaDropDownList.DataSource = centerManager.GeTthanaAccordingToDistrictName(id);
           
            thanaDropDownList.DataTextField = "Name";
            thanaDropDownList.DataValueField = "Id";

            thanaDropDownList.DataBind();
        }
    }
}