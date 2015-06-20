﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Configuration;
using CommunityMedicineAutomationWebApp.Models;

namespace CommunityMedicineAutomationWebApp.DAL
{
    public class CenterGateway
    {
        private string connectionstring =
         WebConfigurationManager.ConnectionStrings["MedicineAutomationConString"].ConnectionString;




        public int Insert(Center center)
        {
            SqlConnection connection = new SqlConnection(connectionstring);

            string query = "INSERT INTO Table_Center (center_Name,center_DistrictId,center_ThanaId) VALUES('" + center.Name + "','" + center.DistrictId + "','" + center.ThanaId + "')";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            int rowsAffected = command.ExecuteNonQuery();

            connection.Close();

            return rowsAffected;
        }


        public List<Thana> GeThanas()
        {
            List<Thana>thanas=new List<Thana>();

            SqlConnection connection=new SqlConnection(connectionstring);

            string query = "SELECT * FROM Table_Thana";

            SqlCommand command=new SqlCommand(query,connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Thana thana=new Thana();

                thana.Id = int.Parse(reader["thana_Id"].ToString());
                thana.Name = reader["thana_Name"].ToString();
                thana.DistrictId = int.Parse(reader["thana_DistrictId"].ToString());

                thanas.Add(thana);

            }
           reader.Close();
            connection.Close();

            return thanas;


        }


        public List<District> GeDistricts()
        {
         List<District > districts=new List<District>();
            SqlConnection connection = new SqlConnection(connectionstring);

            string query = "SELECT * FROM Table_District";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                District district=new District();

                district.Id = int.Parse(reader["district_Id"].ToString());
                district.Name = reader["district_Name"].ToString();
                
                districts.Add(district);
               

            }
            reader.Close();
            connection.Close();

            return districts;


        }


        public List<Thana> GetThanaAccordingToDistrict(int id)
        {
            List<Thana> thanas=new List<Thana>();
            

            SqlConnection connection = new SqlConnection(connectionstring);

            string query = "SELECT t.thana_Id,t.thana_Name FROM Table_Thana as t join Table_District as d on t.thana_DistrictId=d.district_Id WHERE thana_DistrictId='"+id+"'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Thana thana = new Thana();

                thana.Id = int.Parse(reader["thana_Id"].ToString());
                thana.Name = reader["thana_Name"].ToString();

                thanas.Add(thana);
                
            }
            reader.Close();
            connection.Close();

            return thanas;
        }


    }
}