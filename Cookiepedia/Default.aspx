<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Styles/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cookiepedia.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <asp:LoginView ID="lvPengguna" runat="server">
            <AnonymousTemplate>
                Welcome to Cookiepedia
            </AnonymousTemplate>
            <%--<LoggedInTemplate>
                Halo,
                <asp:LoginName ID="LoginName1" FormatString="Selamat Datang {0}!" runat="server" />
                , Terima Kasih sudah kembali mengunjungi website ini.
            </LoggedInTemplate>--%>
        </asp:LoginView>
    </h2>
    <p>
        <strong>Cookiepedia</strong> data input.
    </p>
    <table>
        <tr>
            <td style="width: 50%;">
                <h3></h3>
                <ul>
                    <a id="linkCookie" href="~/CookiesList.aspx" runat="server" title="">Catalogue</a>
                </ul>
            </td>
        </tr>
    </table>
    <table style="width: 600;">
        <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="width: 300px; vertical-align: top;">

            </td>
        </tr>
    </table>
</asp:Content>
