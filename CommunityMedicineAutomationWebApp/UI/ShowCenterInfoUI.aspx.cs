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
            if (centerName != null) centerName.Text = ViewState["centername"].ToString();
            if (centerCode != null) centerCode.Text = ViewState["code"].ToString();
            if (centerPassword != null) centerPassword.Text = ViewState["password"].ToString();
        }
    }
}