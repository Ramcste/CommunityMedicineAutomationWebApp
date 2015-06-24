<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiseasesEntryUI.aspx.cs" ValidateRequest="false" Inherits="CommunityMedicineAutomationWebApp.UI.DiseasesEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    
    
    
   
    

    <script src="../Scripts/ckeditor/ckeditor.js"></script>
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

    <div class="conatiner">
    
        <table>
            <tr><td>
                <asp:Label ID="Label5" runat="server" Text="Diseases Enty"></asp:Label></td></tr>
            <tr>
                <br/>
                <br/>
                <td><asp:Label runat="server" ID="label1">Name</asp:Label></td>
                <td><asp:TextBox runat="server" ID="nameTextBox"/></td>
            </tr>
             <tr>
                <td><asp:Label runat="server" ID="label2">Description</asp:Label></td>
                <td><textarea runat="server" id="descriptionTextBox"></textarea>&nbsp;</td>
            </tr>
            
             <tr>
                <td><asp:Label runat="server" ID="label3">Treatment Procedure</asp:Label></td>
                <td><asp:TextBox runat="server" ID="treatmentProcedureTextBox" TextMode="MultiLine"/></td>
                 <td><asp:Button runat="server" ID="saveDiseaseButton" Text="Save"  OnClick="saveDiseaseButton_OnClick"/></td>
            </tr>
            
            <tr>
                <td></td>
                <td></td>
            </tr>

        </table>
        <asp:Label runat="server" ID="label4"></asp:Label>
        <br/>
        <br/>
        <asp:GridView runat="server" ID="diseaseGridView" Width="825px" AutoGenerateColumns="False" Height="77px"  >
            <Columns>
                  <asp:TemplateField HeaderText="Serial No.">
        <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Name"  />
                <asp:BoundField DataField="Description" HeaderText="Description" HtmlEncode="False" />
                <asp:BoundField DataField="TreatmentProcedure" HeaderText="Treatment"  />
            </Columns>
            

            
            

        </asp:GridView>

    </div>
    </form>
     <script>
         CKEDITOR.replace('descriptionTextBox');
    </script>
</body>
</html>
