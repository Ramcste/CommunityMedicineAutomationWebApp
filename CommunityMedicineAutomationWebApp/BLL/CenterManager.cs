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
            int value = centerGateway.Insert(center);

            if (value > 0)
            {
                return "Save Successfully";
            }

            else
            {
                return "Operation Failed";
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

        


    }
}