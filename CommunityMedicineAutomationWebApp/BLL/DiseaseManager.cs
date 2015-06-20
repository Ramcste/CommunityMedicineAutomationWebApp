using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineAutomationWebApp.DAL;
using CommunityMedicineAutomationWebApp.Models;

namespace CommunityMedicineAutomationWebApp.BLL
{
    public class DiseaseManager
    {
        DiseaseGateway diseaseGateway=new DiseaseGateway();

        public string Insert(Disease disease)
        {
            int value = diseaseGateway.Insert(disease);

            if (value > 0)
            {
                return "Save Successfully";
            }

            else
            {
                return "Operation Failed";
            }
        }


        public List<Disease> GetAll()
        {
            return diseaseGateway.GetllDiseases();
        } 

    }
}