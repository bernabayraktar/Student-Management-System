<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TalepYonetim.aspx.cs" Inherits="StudentManagement.TalepYonetim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style type="text/css">
        #form1 {
            height: 663px;
        }
    </style>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        function Success(status) {
            swal("Başarılı!", "Talep " + status + " olarak işaretlendi.");
        }

        function Error() {
            swal("Başarısız!", "İşlem gerçekleşirken bir hata meydana geldi.");
        }

        function Fail() {
            swal("İşlem yapabilmeniz için bir kayıt seçiniz.");
        }

    </script>
</head>
<body style="height: 674px">
    <form id="form1" runat="server" class="container">
        <asp:Label ID="Label" runat="server" Text="Label" Visible="False"></asp:Label>

        <div class="mt-5 mb-3">
            <h2 class="font-weight-bold">Ders Kayıtlanması Talepleri Yönetim Paneli</h2>
        </div>
        <div class="my-4">
            <asp:LinkButton ID="LinkDersler" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Dersler.aspx">Dersler</asp:LinkButton>
            <asp:LinkButton ID="LinkÖğrenciler" runat="server" CssClass="btn btn-primary mr-2" PostBackUrl="Ogrenciler.aspx">Öğrenciler</asp:LinkButton>
            <asp:LinkButton ID="LinkTalepler" runat="server" CssClass="btn btn-primary" PostBackUrl="TalepYonetim.aspx">Talep Yönetim</asp:LinkButton>
            <asp:LinkButton ID="LinkChat" runat="server" CssClass="btn btn-primary" PostBackUrl="Chat.aspx">Chat</asp:LinkButton>
        </div>
        <div class="mb-3">
            <asp:GridView ID="DataTalepYonetim" runat="server" AutoGenerateSelectButton="True" CssClass="table table-bordered table-striped" OnSelectedIndexChanged="DataTalepYonetim_SelectedIndexChanged">
            </asp:GridView>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Adı:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="OgrAd" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Soyadı:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="OgrSoyad" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Öğrenci Numarası:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="OgrNo" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ders Kodu:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="DersKodu" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ders Adı:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="DersAdi" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
                <asp:Button ID="Onayla" runat="server" OnClick="Onayla_Click" Text="Onayla" CssClass="btn btn-success" />
                <asp:Button ID="Reddet" runat="server" OnClick="Reddet_Click" Text="Reddet" CssClass="btn btn-danger" />
            </div>
        </div>
    </form>
</body>
</html>
