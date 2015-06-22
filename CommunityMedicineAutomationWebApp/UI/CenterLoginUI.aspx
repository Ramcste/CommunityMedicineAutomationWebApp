<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CenterLoginUI.aspx.cs" Inherits="CommunityMedicineAutomationWebApp.UI.CenterLoginUI" %>

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
                <td>
                      <asp:Label runat="server" ID="label1">Center Code</asp:Label>
                </td>
                
                <td>
                       <asp:TextBox runat="server" ID="codeTextBox" Width="220"/><br/>
                </td>
            </tr>
            
            <tr>
                <td>
                       <asp:Label runat="server" ID="label2">Password</asp:Label>
                </td>
                <td>
                     <asp:TextBox runat="server" ID="passwordTextBox" Width="220"/><br/> 
                </td>
            </tr>
            
            <tr>
                <td></td>

        <td>
        <asp:Button runat="server" ID="loginCenterButon" Text="Login" Width="120" OnClick="loginCenterButon_OnClick"/>
            
        </td>
            </tr>

        </table>
        
        <asp:Label runat="server" ID="label3"/>
      
      
        
      
      
        
    
    
    </div>
    </form>
</body>
</html>
