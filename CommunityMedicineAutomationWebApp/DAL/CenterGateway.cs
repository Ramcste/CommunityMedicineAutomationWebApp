using System;
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

            string query = "INSERT INTO Table_Center VALUES('" + center.Name + "','" + center.Code + "','" + center.Password + "','" + center.DistrictId + "','" + center.ThanaId + "')";

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

        public bool Login(string code,string password)
        {
            bool login = false;
            SqlConnection connection = new SqlConnection(connectionstring);

            string query = "SELECT center_Code,center_Password FROM Table_Center WHERE center_Code='"+code+"' AND center_Password='"+password+"'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                login = true;
                break;
            }
             

            connection.Close();

            return login;
            
        }

        public int Insert(Doctor doctor)
        {
            SqlConnection connection = new SqlConnection(connectionstring);

            string query = "INSERT INTO Table_Doctor VALUES ('" + doctor.Name + "','" + doctor.Degree + "','" + doctor.Specialzation + "','"+doctor.CenterId+"')";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            int rowsAffected = command.ExecuteNonQuery();

            connection.Close();

            return rowsAffected;
        }

        public int GetCenterId(string code)
        {
            int centerId = 0;

            SqlConnection connection = new SqlConnection(connectionstring);

            string query = "SELECT center_Id FROM Table_Center WHERE center_Code='" + code + "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {

                centerId = int.Parse(reader["center_Id"].ToString());
            }


            connection.Close();

            return centerId;
        }

        public List<Center> GetCenterAccordingToThana(int id)
        {
            List<Center> centerList = new List<Center>();


            SqlConnection connection = new SqlConnection(connectionstring);
            
            string query = "SELECT center_Id,center_Name FROM Table_Center WHERE center_ThanaId='" + id + "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Center center = new Center();
                center.Id = int.Parse(reader["center_Id"].ToString());
                center.Name = reader["center_Name"].ToString();

                centerList.Add(center);

            }
            reader.Close();
            connection.Close();

            return centerList;
        }

        public int MedicineQuantityEntry(MedicineQuantity medicineQuantity)
        {
            SqlConnection connection = new SqlConnection(connectionstring);

            string query = "INSERT INTO Table_MedicineQuantity VALUES('" + medicineQuantity.Name + "','" + medicineQuantity.Quantity + "','" + medicineQuantity.CenterId + "')";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            int rowsAffected = command.ExecuteNonQuery();

            connection.Close();

            return rowsAffected;
        }

        public int GetUpdateMedicineQuantity(string name,int value)
        {
            SqlConnection connection = new SqlConnection(connectionstring);

            string query = "UPDATE Table_MedicineQuantity SET medicineQuantity_Quantity+='" + value + "' WHERE medicineQuantity_Name='" + name + "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            int rowsAffected = command.ExecuteNonQuery();

            connection.Close();

            return rowsAffected;

        }


        public bool HasThisCenterNameExists(string name)
        {
            bool namexists = false;
            SqlConnection connection = new SqlConnection(connectionstring);

            string query = "SELECT center_Name FROM Table_Center WHERE center_Name='" + name + "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                namexists = true;
                break;
            }


            connection.Close();

            return namexists;
            
        }

    }
}