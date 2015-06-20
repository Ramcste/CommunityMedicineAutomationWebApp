<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiseasesEntryUI.aspx.cs" Inherits="CommunityMedicineAutomationWebApp.UI.DiseasesEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="conatiner">
    
        <table>
            <tr>
                <td><asp:Label runat="server" ID="label1">Name</asp:Label></td>
                <td><asp:TextBox runat="server" ID="nameTextBox"/></td>
            </tr>
             <tr>
                <td><asp:Label runat="server" ID="label2">Description</asp:Label></td>
                <td><asp:TextBox runat="server" ID="descriptionTextBox"/></td>
            </tr>
            
             <tr>
                <td><asp:Label runat="server" ID="label3">Treatment Procedure</asp:Label></td>
                <td><asp:TextBox runat="server" ID="treatmentProcedureTextBox"/></td>
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
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:BoundField DataField="TreatmentProcedure" HeaderText="Treatment"  />
            </Columns>
            

            
            

        </asp:GridView>

    </div>
    </form>
</body>
</html>
