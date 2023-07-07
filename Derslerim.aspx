<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Derslerim.aspx.cs" Inherits="StudentManagement.Derslerim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="my-4">
            <asp:Label ID="ogrAdSoyad" runat="server" Text="DERSLERİM" CssClass="h3"></asp:Label>
        </div>
        <div class="my-4">
            <asp:LinkButton ID="LinkDerslerim" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Derslerim.aspx">Derslerim</asp:LinkButton>
            <asp:LinkButton ID="LinkProfilim" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Profilim.aspx">Profilim</asp:LinkButton>
            <asp:LinkButton ID="LinkTümDersler" runat="server" CssClass="btn btn-primary" PostBackUrl="DersKayit.aspx">Tüm Dersler</asp:LinkButton>
             <asp:LinkButton ID="LinkDurum" runat="server" CssClass="btn btn-primary" PostBackUrl="DersKaydıTalepleri.aspx">Ders Taleplerim </asp:LinkButton>
             <asp:LinkButton ID="LinkChat" runat="server" CssClass="btn btn-primary" PostBackUrl="Chat.aspx">Chat</asp:LinkButton>
        </div>
        <div class="my-4">
            <asp:GridView ID="data" runat="server" CssClass="table table-bordered table-striped">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
