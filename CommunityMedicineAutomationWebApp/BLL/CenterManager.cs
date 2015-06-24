using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineAutomationWebApp.DAL;
using CommunityMedicineAutomationWebApp.Models;

namespace CommunityMedicineAutomationWebApp.BLL
{
    public class CenterManager
    {
        CenterGateway centerGateway=new CenterGateway();

        public string Insert(Center center)
        {
            if (center.Name == "")
            {
                return "center name is missing";
            }

            else
            {

                int value = centerGateway.Insert(center);

                if (value > 0)
                {
                    return "Saved Successfully";
                }

                else
                {
                    return "Operation Failed";
                }
            }
        }

        public List<Thana> GetThanaList()
        {
           return  centerGateway.GeThanas();
        }

        public List<District> GetDistrictList()
        {
            return centerGateway.GeDistricts();
        }

        public List<Thana> GeTthanaAccordingToDistrictName(int id)
        {
            return centerGateway.GetThanaAccordingToDistrict(id);

        }

        public bool  LoginMessage(string code,string password)
        {
            return centerGateway.Login(code, password);

           

        }

        public string Insert(Doctor doctor)
        {
            if (doctor.Name == "") 
            {
                return "doctor name is missing";
            }

            else if(doctor.Degree=="")
            {
                return "doctor's degree is missing";
            }

            else if(doctor.Specialzation=="")
            {
                return "doctor's specialization is missing";
            }

            else 
            {
            
            int value = centerGateway.Insert(doctor);

            if (value > 0)
            {
                return "Saved Successfully";
            }

            else
            {
                return "Operation Failed";
            }
        }
        }

        public int GetCenterId(string name)
        {
            return centerGateway.GetCenterId(name);
        }

        public List<Center> GetAllCentersByThana(int id)
        {
            return centerGateway.GetCenterAccordingToThana(id);
        }

        public string  InsertMedicineQunatity(MedicineQuantity medicineQuantity)
        {

            int value=centerGateway.MedicineQuantityEntry(medicineQuantity);

            if (value > 0) 
            {
                return "medicine quantity saved successfully";
            }

            else 
            {
                return "Operation Failed";
            }
        
        }

        public int GetUpdateMedicineQuantity(string name, int value) 
        {
            return centerGateway.GetUpdateMedicineQuantity(name,value);
        }
  
    
    
    }
}