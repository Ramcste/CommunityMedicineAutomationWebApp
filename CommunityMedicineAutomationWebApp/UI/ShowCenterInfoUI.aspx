<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowCenterInfoUI.aspx.cs" Inherits="CommunityMedicineAutomationWebApp.UI.ShowCenterInfoUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <!--  <script src="../JavaScripts/printingOperation.js"></script>
      -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table>
            
            <tr>
                <td><asp:Label runat="server" >District Name:</asp:Label></td>
                <td><asp:Label runat="server" ID="districtName"></asp:Label></td>

            </tr>
            
            <tr>
                <td><asp:Label runat="server" >Thana Name:</asp:Label></td>
                <td><asp:Label runat="server" ID="thanaName"></asp:Label></td>

            </tr>

            <tr>
                <td><asp:Label runat="server" >Center Name:</asp:Label></td>
                <td><asp:Label runat="server" ID="centerName"></asp:Label></td>

            </tr>
            
            <tr>
                <td><asp:Label runat="server" >Center Code:</asp:Label></td>
                <td><asp:Label runat="server" ID="centerCode"></asp:Label></td>

            </tr>
            
            <tr>
                <td><asp:Label runat="server" >Center Password:</asp:Label></td>
                <td><asp:Label runat="server" ID="centerPassword"></asp:Label></td>

            </tr>
            
            <tr>
                <td></td>
                <td><asp:Button runat="server" ID="centerInfoPrintButton" Text="Print" OnClientClick="javascript:window.print();" OnClick="centerInfoPrintButton_OnClick" /></td>
            </tr>

        </table>

    </div>
    </form>
</body>
</html>
