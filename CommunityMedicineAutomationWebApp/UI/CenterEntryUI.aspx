﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CenterEntryUI.aspx.cs" Inherits="CommunityMedicineAutomationWebApp.UI.CenterEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        
         <table>
            <tr>
                <td><asp:Label runat="server" ID="label1">Name</asp:Label></td>
                <td><asp:TextBox runat="server" ID="nameTextBox" Width="220"/></td>
            </tr>
             <tr>
                <td><asp:Label runat="server" ID="label2">District</asp:Label></td>
                <td><asp:DropDownList runat="server" ID="districtDropDownList" Width="220" AutoPostBack="True" OnSelectedIndexChanged="districtDropDownList_OnSelectedIndexChanged"  /></td>
            </tr>
            
             <tr>
                <td><asp:Label runat="server" ID="label3">Thana</asp:Label></td>
                <td><asp:DropDownList runat="server" ID="thanaDropDownList" AutoPostBack="True" Width="220"/></td>
               
            </tr>
            
            <tr>
                <td></td>
               <td><asp:Button runat="server" ID="saveCenterEntryButton" OnClick="saveCenterEntryButton_OnClick" Text="Save"  /></td>
            </tr>
             <tr>
                 <td></td>
                 <td></td>
             </tr>

        </table>
        <asp:Label runat="server" ID="label6"></asp:Label>
        <br/>
        <br/>
    
    </div>
    </form>
</body>
</html>
