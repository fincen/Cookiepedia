<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataSearch.aspx.cs" Inherits="Cookiepedia.DataSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Search :<asp:TextBox ID="txtKunci" runat="server" />
    <asp:Button ID="btnCari" runat="server" Text="Cari" 
      onclick="btnCari_Click" />
    <asp:SqlDataSource ID="sdsCatalogue" runat="server" 
      ConnectionString="<%$ ConnectionStrings:CookiesDbConnectionString %>" 
      InsertCommand="INSERT INTO [T_Catalogue] ([Name]) 
        VALUES (@Name)" 
      SelectCommand="SELECT * FROM [T_Catalogue] WHERE 
        ([Name] = @Name)">
    <SelectParameters>
      <asp:ControlParameter ControlID="txtKunci" 
        Name="Name" PropertyName="Text" Type="String" />
    </SelectParameters>
    <InsertParameters>
      <asp:Parameter Name="Name" Type="String" />
    </InsertParameters>
    </asp:SqlDataSource><hr />
    <asp:GridView ID="gvCatalogue" DataSourceID="sdsCatalogue" 
      Visible="False" runat="server" AutoGenerateColumns="False" DataKeyNames="Ref_ID">
        <Columns>
            <asp:BoundField DataField="Ref_ID" HeaderText="Ref_ID" InsertVisible="False" ReadOnly="True" SortExpression="Ref_ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
      <EmptyDataTemplate>
      The category you are looking for was not found! You can add a new category in the form below.
      <asp:FormView ID="frmCatalogue" DefaultMode="Insert" 
        runat="server" DataSourceID="sdsCatalogue" 
        oniteminserted="frmCatalogue_ItemInserted">
        <InsertItemTemplate>
          Catalogue name : 
          <asp:TextBox ID="txtNamaKat" Text='<%# 
            Bind("nama_kat") %>' runat="server" />
          <asp:Button ID="btnAdd" CommandName="Insert" 
            runat="server" Text="Add" />
        </InsertItemTemplate>
      </asp:FormView>
      </EmptyDataTemplate>
    </asp:GridView>

    </div>
    </form>
</body>
</html>
