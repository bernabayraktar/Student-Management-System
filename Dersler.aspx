<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dersler.aspx.cs" Inherits="StudentManagement.Dersler1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style type="text/css">
        #form1 {
            height: 178px;
        }
    </style>
</head>
<body style="height: 157px">
    <form id="form1" runat="server" class="container">
        <h3>Ders Ekle</h3>

         <div class="my-4">
            <asp:LinkButton ID="LinkDersler" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Dersler.aspx">Dersler</asp:LinkButton>
            <asp:LinkButton ID="LinkÖğrenciler" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Ogrenciler.aspx">Öğrenciler</asp:LinkButton>
            <asp:LinkButton ID="LinkTalepler" runat="server" CssClass="btn btn-primary" PostBackUrl="TalepYonetim.aspx">Talep Yönetim</asp:LinkButton>
            <asp:LinkButton ID="LinkChat" runat="server" CssClass="btn btn-primary" PostBackUrl="Chat.aspx">Chat</asp:LinkButton>
          
        </div>
        <div class="form-group">
            <label for="DersKodu">Ders Kodu:</label>
            <asp:TextBox ID="DersKodu" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="DersAdi">Ders Adı:</label>
            <asp:TextBox ID="DersAdi" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="Ders_Ekle" runat="server" OnClick="Ders_Ekle_Click" Text="Ekle" CssClass="btn btn-primary" />
        <br /><br />
        <asp:GridView ID="tblDersler" runat="server" CssClass="table table-striped">
        </asp:GridView>
    </form>
</body>
</html>
