<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMedicineUI.aspx.cs" Inherits="CommunityMedicineAutomationWebApp.UI.SendMedicineUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="District"></asp:Label></td>
                <td><asp:DropDownList ID="districtDropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="districtDropDownList_SelectedIndexChanged" Height="30" Width="210px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Thana"></asp:Label></td>
                <td><asp:DropDownList ID="thanaDropDownList" runat="server" AutoPostBack="True" Height="30px" Width="210px" OnSelectedIndexChanged="thanaDropDownList_SelectedIndexChanged"></asp:DropDownList></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Center"></asp:Label></td>
                <td><asp:DropDownList ID="centerDropDownList" runat="server" AutoPostBack="True" Height="30px" Width="210px"></asp:DropDownList></td>
            </tr>
        </table>
        <br/>
        <br/>
        <asp:Label ID="Label4" runat="server" Text="Add Medicine"></asp:Label>
        <table>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Select Medicine"></asp:Label></td>
                <td><asp:DropDownList ID="medicineDropDownList" runat="server" Width="200px"></asp:DropDownList></td>
                <td><asp:Label ID="Label6" runat="server" Text="Quantity"></asp:Label></td>
                <td><asp:TextBox ID="quantityTextBox" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="medicnieAddButton" runat="server" Text="Add" OnClick="medicnieAddButton_Click" style="height: 26px" /></td>
            </tr>
        </table>
        <br/>
        <br/>
        
        <asp:GridView runat="server" ID="medicineQuantityGridView"  Width="505px">
           
           

        </asp:GridView>
        
        <br/>
        <br/>
        
        <asp:Button runat="server" ID="saveMedicineQuantityInformationButton" Text="Save" OnClick="saveMedicineQuantityInformationButton_OnClick"/>

        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>

    </div>
    </form>
</body>
</html>
