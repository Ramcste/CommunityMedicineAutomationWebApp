using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineAutomationWebApp.DAL;
using CommunityMedicineAutomationWebApp.Models;

namespace CommunityMedicineAutomationWebApp.BLL
{
    public class MedicineManager
    {
        MedicineGateway medicineGateway=new MedicineGateway();
        public string Insert(Medicine medicine)
        {
            int value = medicineGateway.Insert(medicine);

            if (value > 0)
            {
                return "Save Successfully";
            }

            else
            {
                return "Operation Failed";
            }
        }


        public List<Medicine> GetAll()
        {
            return medicineGateway.GetllMedicines();
        } 
    }
}