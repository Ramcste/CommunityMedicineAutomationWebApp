<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorEntryUI.aspx.cs" Inherits="CommunityMedicineAutomationWebApp.DoctorEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  
      <nav>
    
        <ul>
            <li>
                <a href="DoctorEntryUI.aspx">Doctor Entry</a>
            </li>
            <li>
                <a href="PatientsRegistrationUI.aspx">Patients Registration</a>
            </li>
            <li>
                <a href="TreatmentGivenUI.aspx">Treatment Given</a>
            </li>
           
            <li>
                <a href="StockReportUI.aspx">Stock Report</a>
            </li>
        </ul>
    </nav>   
        
     <div class="container">
         <h1>Doctors Entry</h1>
         
         <table>
             <tr>
                 <td><asp:Label runat="server" >Name</asp:Label></td>
                 <td><asp:TextBox runat="server" ID="nameTextBox" Width="220"/></td>
                 
             </tr>
             
             <tr>
                 <td><asp:Label runat="server" >Degree</asp:Label></td>
                 <td><asp:TextBox runat="server" ID="degreeTextBox" Width="220"/></td>
             </tr>
             
             <tr>
                 <td><asp:Label runat="server" >Specialization</asp:Label></td>
                 <td><asp:TextBox runat="server" ID="specializationTextBox" Width="220"/></td>
             </tr>
             
             <tr>
                 <td></td>
                 <td><asp:Button runat="server" ID="doctorSaveButton" Text="Save" OnClick="doctorSaveButton_OnClick"/></td>
             </tr>

         </table>
         
         <asp:Label runat="server" ID="label1"/>
    
    </div>
    </form>
</body>
</html>
