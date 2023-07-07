<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profilim.aspx.cs" Inherits="StudentManagement.Profilim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>

    <form id="form1" runat="server" class="container mt-5">
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
        <div class="form-group">
            <label for="ogrAd">Öğrencinin Adı:</label>
            <asp:TextBox ID="ogrAd" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="ogrSoyad">Öğrencinin Soyadı:</label>
            <asp:TextBox ID="ogrSoyad" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="ogrNo">Öğrenci No:</label>
            <asp:TextBox ID="ogrNo" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="ogrEposta">E-Posta:</label>
            <asp:TextBox ID="ogrEposta" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="ogrTel">Telefon:</label>
            <asp:TextBox ID="ogrTel" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <button type="submit" class="btn btn-primary">Bilgileri Güncelle</button>
    </form>



    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
