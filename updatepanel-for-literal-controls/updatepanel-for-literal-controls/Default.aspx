<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
  CodeBehind="Default.aspx.cs" Inherits="updatepanel_for_literal_controls._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  <asp:ScriptManager ID="ScriptManager1" runat="server">
  </asp:ScriptManager>
  <div id="Div1">
    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    <br />
    <asp:Literal ID="Literal3" runat="server"></asp:Literal>
    <br />
    <asp:Literal ID="Literal4" runat="server"></asp:Literal>
  </div>
  <div id="dvGrid">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
        <asp:GridView ID="GridView1" Width="100%" EditRowStyle-Width="100px" DataKeyNames="PersonID"
          Visible="True" runat="server" AutoGenerateColumns="False" Font-Names="Arial" Font-Size="12pt"
          ShowFooter="true" OnRowEditing="EditCustomer" OnRowUpdating="UpdateCustomer" OnRowCancelingEdit="CancelEdit"
          ShowHeaderWhenEmpty="true" EmptyDataText="EMPTY!">
          <Columns>
            <asp:TemplateField HeaderText=" # ">
              <ItemTemplate>
                <%# Container.DataItemIndex + 1 %>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name">
              <ItemTemplate>
                <asp:Label ID="lblFirstName" runat="server" Height="20px" Text='<%# Eval("FirstName")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Eval("FirstName")%>'></asp:TextBox>
              </EditItemTemplate>
              <FooterTemplate>
                <asp:TextBox ID="txtFirstName" Width="60px" MaxLength="15" runat="server"></asp:TextBox>
              </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name">
              <ItemTemplate>
                <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtLastName" runat="server" Text='<%# Eval("LastName")%>'></asp:TextBox>
              </EditItemTemplate>
              <FooterTemplate>
                <asp:TextBox ID="txtLastName" Width="60px" MaxLength="15" runat="server"></asp:TextBox>
              </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Age">
              <ItemTemplate>
                <asp:Label ID="lblAge" runat="server" Text='<%# Eval("Age")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtAge" runat="server" Text='<%# Eval("Age")%>'></asp:TextBox>
              </EditItemTemplate>
              <FooterTemplate>
                <asp:TextBox ID="txtAge" Width="30px" MaxLength="2" runat="server"></asp:TextBox>
              </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Activity Card">
              <ItemTemplate>
                <asp:Label ID="lblActivityCard" runat="server" Text='<%# Eval("ActivityCard")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtActivityCard" runat="server" Text='<%# Eval("ActivityCard")%>'></asp:TextBox>
              </EditItemTemplate>
              <FooterTemplate>
                <asp:TextBox ID="txtActivityCard" Width="50px" MaxLength="7" runat="server"></asp:TextBox>
              </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cell Phone">
              <ItemTemplate>
                <asp:Label ID="lblCell" runat="server" Text='<%# Eval("CellNumber")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtCell" runat="server" Text='<%# Eval("CellNumber")%>'></asp:TextBox>
              </EditItemTemplate>
              <FooterTemplate>
                <asp:TextBox ID="txtCell" Width="70px" MaxLength="10" runat="server"></asp:TextBox>
              </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Emergency Phone">
              <ItemTemplate>
                <asp:Label ID="lblEmergency" runat="server" Text='<%# Eval("EmergencyNumber")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtEmergency" runat="server" Text='<%# Eval("Emergency#")%>'></asp:TextBox>
              </EditItemTemplate>
              <FooterTemplate>
                <asp:TextBox ID="txtEmergency" Width="70px" MaxLength="10" runat="server"></asp:TextBox>
              </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Boat Type">
              <ItemTemplate>
                <asp:Label ID="lblBoat" runat="server" Text='<%# Eval("CraftType")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtBoat" runat="server" Text='<%# Eval("CraftType")%>'></asp:TextBox>
              </EditItemTemplate>
              <FooterTemplate>
                <asp:DropDownList ID="ddlBoat" runat="server">
                  <asp:ListItem>None</asp:ListItem>
                  <asp:ListItem>Kayak</asp:ListItem>
                  <asp:ListItem>Canoe</asp:ListItem>
                </asp:DropDownList>
              </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Initials">
              <ItemTemplate>
                <asp:Label ID="lblInitials" runat="server" Text='<%# Eval("Initials")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtInitials" runat="server" Text='<%# Eval("Initials")%>'></asp:TextBox>
              </EditItemTemplate>
              <FooterTemplate>
                <asp:TextBox ID="txtInitials" Width="30px" MaxLength="2" runat="server"></asp:TextBox>
              </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Group #">
              <ItemTemplate>
                <asp:Label ID="lblGroup" runat="server" Text='<%# Eval("Group")%>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtGroup" runat="server" Text='<%# Eval("Group")%>'></asp:TextBox>
              </EditItemTemplate>
              <FooterTemplate>
                <asp:TextBox ID="txtGroup" MaxLength="2" Width="20px" runat="server"></asp:TextBox>
              </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
              <ItemTemplate>
                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%# Eval("PersonID")%>'
                  OnClientClick="return confirm('Are you sure you want to delete?')" Text="Delete"
                  OnClick="DeleteCustomer"></asp:LinkButton>
              </ItemTemplate>
              <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Submit" OnClick="AddNewCustomer" />
              </FooterTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
          </Columns>
          <EmptyDataTemplate>
            <span style="font-size: 12px; font-weight: bold; color: Blue;">No records are available
              matching your selected filter. Click on "Add" button to enter new data .. </span>
          </EmptyDataTemplate>
          <AlternatingRowStyle BackColor="#C2D69B" />
          <HeaderStyle BackColor="Aqua" />
        </asp:GridView>
      </ContentTemplate>
      <Triggers>
        <asp:AsyncPostBackTrigger ControlID="GridView1" />
      </Triggers>
    </asp:UpdatePanel>
  </div>
</asp:Content>
