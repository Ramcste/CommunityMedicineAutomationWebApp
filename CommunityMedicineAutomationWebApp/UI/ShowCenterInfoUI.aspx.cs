using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CommunityMedicineAutomationWebApp.UI
{
    public partial class ShowCenterInfoUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string DistrictName = Request["districtName"];
            string ThanaName = Request["thanaName"];
            string Name = Request["centerName"];
            string Code = Request["centerCode"];
            string Password = Request["centerPassword"];

            districtName.Text = DistrictName;
            thanaName.Text = ThanaName;
            centerName.Text = Name;
            centerCode.Text = Code;
            centerPassword.Text = Password;
        }

        protected void centerInfoPrintButton_OnClick(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "PrintOperation", "printing()", true);
        }

        
    }
}