<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DersKaydıTalepleri.aspx.cs" Inherits="StudentManagement.DersKaydıTalepleri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="mt-4 mb-3">
            <h3 class="font-weight-bold">Ders Kaydının Son Durumu</h3>
        </div>
        <div class="my-4">
            <asp:LinkButton ID="LinkDerslerim" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Derslerim.aspx">Derslerim</asp:LinkButton>
            <asp:LinkButton ID="LinkProfilim" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Profilim.aspx">Profilim</asp:LinkButton>
            <asp:LinkButton ID="LinkTümDersler" runat="server" CssClass="btn btn-primary" PostBackUrl="DersKayit.aspx">Tüm Dersler</asp:LinkButton>
            <asp:LinkButton ID="LinkDurum" runat="server" CssClass="btn btn-primary" PostBackUrl="DersKaydıTalepleri.aspx">Ders Taleplerim </asp:LinkButton>
            <asp:LinkButton ID="LinkChat" runat="server" CssClass="btn btn-primary" PostBackUrl="Chat.aspx">Chat</asp:LinkButton>

        </div>
        <div class="table-responsive">
            <asp:GridView ID="DataKayitDurum" runat="server" CssClass="table table-bordered">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
