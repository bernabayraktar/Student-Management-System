<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ogrenciler.aspx.cs" Inherits="StudentManagement.Ogrenciler1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        .container {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <h2 class="text-center mb-4">ÖĞRENCİLER</h2>
        <div class="my-4">
            <asp:LinkButton ID="LinkDersler" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Dersler.aspx">Dersler</asp:LinkButton>
            <asp:LinkButton ID="LinkÖğrenciler" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Ogrenciler.aspx">Öğrenciler</asp:LinkButton>
            <asp:LinkButton ID="LinkTalepler" runat="server" CssClass="btn btn-primary" PostBackUrl="TalepYonetim.aspx">Talep Yönetim</asp:LinkButton>
            <asp:LinkButton ID="LinkChat" runat="server" CssClass="btn btn-primary" PostBackUrl="Chat.aspx">Chat</asp:LinkButton>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="DataOgrenciler" runat="server" CssClass="table table-striped">
            </asp:GridView>
        </div>
    </form>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
