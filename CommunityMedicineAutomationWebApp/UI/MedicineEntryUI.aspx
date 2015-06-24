<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicineEntryUI.aspx.cs" Inherits="CommunityMedicineAutomationWebApp.UI.MedicineEntryUI" %>

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
                 <a href="MedicineEntryUI.aspx">MedicineEntryUI</a>
            </li>
            <li>
                <a href="DiseasesEntryUI.aspx">DiseasesEntryx</a>
            </li>
            <li>
                <a href="CenterEntryUI.aspx">CenterEntryUI</a>
            </li>
           
            <li>
                <a href="SendMedicineUI.aspx">SendMedicineUI</a>
            </li>
           <li>
                <a href="CenterLoginUI.aspx">CenterLoginUI</a> 
            </li>


        </ul>
    </nav>
        <br/>
        <br/>

    <div class="container">
    
        
        
        <table>
            <tr>
                <td><asp:Label runat="server" ID="label1">Name of Medicine with Mg/Ml</asp:Label></td>
                <td><asp:TextBox runat="server" ID="nameTextBox" TextMode="MultiLine" /></td>
            </tr>
     
                    
            <tr>
                    <td></td>
                   <td><asp:Button runat="server" ID="saveMedicineButton" Text="Save" OnClick="saveMedicineButton_OnClick"/> </td>
            </tr>
            
            <tr>
                <td></td>
                <td></td>
            </tr>

        </table>
        <asp:Label runat="server" ID="label5"></asp:Label>
        <br/>
        <br/>
        <asp:GridView runat="server" ID="medicineGridView" Width="825px" AutoGenerateColumns="False" Height="77px"  >
            <Columns>
                  <asp:TemplateField HeaderText="Serial No.">
        <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Name"  />
               
            </Columns>
            

            
            

        </asp:GridView>
        

    </div>
    </form>
</body>
</html>
