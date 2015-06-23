<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockReportUI.aspx.cs" Inherits="CommunityMedicineAutomationWebApp.UI.StockReportUI" %>

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
    <div class="wrapper">
    
       
        <asp:GridView ID="medicineStockGridView" runat="server" Width="550px">
        </asp:GridView>

    </div>
    </form>
</body>
</html>
