<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DersKayit.aspx.cs" Inherits="StudentManagement.DersKayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style type="text/css">
        #form1 {
            height: 671px;
        }
    </style>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script>
        function Success() {
            swal("Başarılı!", "Ders kayıtlanması talebiniz başarıyla oluşturuldu.");
        }

        function Error() {
            swal("Başarısız!", "Ders kayıtlanması sırasında bir hata meydana geldi.");
        }

    </script>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <h1 class="font-weight-bold mt-4">TÜM DERSLER</h1>
        <div class="my-4">
            <asp:LinkButton ID="LinkDerslerim" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Derslerim.aspx">Derslerim</asp:LinkButton>
            <asp:LinkButton ID="LinkProfilim" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Profilim.aspx">Profilim</asp:LinkButton>
            <asp:LinkButton ID="LinkTümDersler" runat="server" CssClass="btn btn-primary" PostBackUrl="DersKayit.aspx">Tüm Dersler</asp:LinkButton>
            <asp:LinkButton ID="LinkDurum" runat="server" CssClass="btn btn-primary" PostBackUrl="DersKaydıTalepleri.aspx">Ders Taleplerim </asp:LinkButton>
            <asp:LinkButton ID="LinkChat" runat="server" CssClass="btn btn-primary" PostBackUrl="Chat.aspx">Chat</asp:LinkButton>

        </div>
        <div class="card mt-4">
            <div class="card-body">
                <p class="card-text">Seç butonuna tıklayarak derse kayıt olabilirsiniz.</p>
                <asp:GridView ID="DataTumDersler" runat="server" AutoGenerateSelectButton="True" CssClass="table table-striped table-bordered" OnSelectedIndexChanged="DataTumDersler_SelectedIndexChanged"></asp:GridView>
            </div>
        </div>
    </form>

</body>
</html>
