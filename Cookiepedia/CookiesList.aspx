<%@ Page Title="Cookies List" Language="C#" MasterPageFile="~/Styles/Site.Master" AutoEventWireup="true" CodeBehind="CookiesList.aspx.cs" Inherits="Cookiepedia.CookiesList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:EntityDataSource ID="edsCookiesList" runat="server" 
        ConnectionString="name=CookiesDbEntities1" 
        DefaultContainerName="CookiesDbEntities1" EnableFlattening="False" 
        EntitySetName="T_Catalogue" AutoGenerateWhereClause="true" >
        <WhereParameters>
            <asp:QueryStringParameter Name="Ref_ID" QueryStringField="Ref_ID" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>

    Menu <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Choose an action...</asp:ListItem>
        <asp:ListItem Value="New Cookie" Text="New Cookie"></asp:ListItem>
        <asp:ListItem Value="Edit Cookie" Text="Edit Cookie">Edit Cookie</asp:ListItem>
    </asp:DropDownList>

    <asp:ListView ID="lvCookies" runat="server" DataSourceID="edsCookiesList" DataKeyNames="Ref_ID"
        GroupItemCount="2">
        <EmptyDataTemplate>
            <table id="Table1" runat="server">
                <tr><td>Tidak ada data</td></tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td id="Td1" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="Tr1" runat="server">
                <td runat="server" id="itemPlaceholder" />
            </tr>
        </GroupTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr2" runat="server">
                    <td id="Td2" runat="server">
                        <table id="Table3" runat="server">
                            <tr id="groupPlaceholder" runat="server" />
                        </table>
                    </td>
                </tr>
                <tr><td></td></tr>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <td id="Td3" runat="server">
                <table border="0" width="350">
                    <tr>
                        <td style="width:200px;vertical-align:top">
                            Ref: <br /> <strong><%# Eval("Ref_ID") %></strong><br />
                            <br />
                            Name: <br /> <strong><%# Eval("Name") %></strong><br />
                            <br />
                            Description: <br /> <strong><%# Eval("Description") %></strong><br />
                        </td>
                    </tr>
                </table>
            </td>
            
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
