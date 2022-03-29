<%@ Page Title="Insert Cookie" Language="C#" MasterPageFile="~/Styles/Site.Master" AutoEventWireup="true" CodeBehind="InsertCookie.aspx.cs" Inherits="Cookiepedia.InsertCookie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="sdsCatalogue" runat="server" 
    ConnectionString="<%$ ConnectionStrings:CookiesDbConnectionString %>" 
        InsertCommand="INSERT INTO [T_Catalogue] ([Name], [Description]) VALUES (@Name, @Description)"
        SelectCommand="SELECT * FROM [T_Catalogue]">
  </asp:SqlDataSource>
     <strong>New cookie</strong> 
        <br />
        <br />
  <asp:FormView ID="frmCatalogue" runat="server" 
    DataSourceID="sdsCatalogue" DefaultMode="Insert" DataKeyNames="Ref_ID">
      <EditItemTemplate>
          Ref_ID:
          <asp:Label ID="Ref_IDLabel1" runat="server" Text='<%# Eval("Ref_ID") %>' />
          <br />
          Name:
          <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
          <br />
          Description:
          <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
          <br />
          <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
          &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
      </EditItemTemplate>
    <InsertItemTemplate>
        <table>
        <tr>
            <td style="width:150px;vertical-align:top;text-align:right"> Cookie name: </td>
            <td><asp:TextBox ID="TextBox1" Text='<%# Bind("Name") %>' runat="server" Width="550px" /><br /></td>
        </tr>
        <tr>
            <td style="width:150px;vertical-align:top;text-align:right"> Cookie description: </td>
            <td><asp:TextBox ID="TextBox2" Text='<%# Bind("Description") %>' runat="server" Width="550px" /><br /></td>
        </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            <td style="text-align:right">
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClick="LinkButton2_Click" />
            </td>
                </tr>
    </table>
    </InsertItemTemplate>
      <ItemTemplate>
          Ref_ID:
          <asp:Label ID="Ref_IDLabel" runat="server" Text='<%# Eval("Ref_ID") %>' />
          <br />
          Name:
          <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
          <br />
          Description:
          <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
          <br />
      </ItemTemplate>
  </asp:FormView>
    </asp:Content>
