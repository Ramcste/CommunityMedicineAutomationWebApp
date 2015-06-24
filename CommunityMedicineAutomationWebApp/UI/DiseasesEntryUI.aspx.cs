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
    public partial class DiseasesEntryUI : System.Web.UI.Page
    {
        DiseaseManager diseaseManager=new DiseaseManager();

        Disease disease=new Disease();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLoadedGridView();
            }
           
        }



        public void GetLoadedGridView()
        {
            diseaseGridView.DataSource = diseaseManager.GetAll();
            diseaseGridView.DataBind();
        }

        protected void saveDiseaseButton_OnClick(object sender, EventArgs e)
        {
            disease.Name = nameTextBox.Text;

            disease.Description = Request.Form["descriptionTextBox"];

            disease.TreatmentProcedure = treatmentProcedureTextBox.Text;

            string message = diseaseManager.Insert(disease);

            label4.Text = message;

            GetLoadedGridView();

        }
    }
}