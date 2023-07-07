<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="StudentManagement.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <!-- FontAwesome kütüphanesi -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function success() {
            alert("Başarılı☺");
        }
    </script>
    <style>
        .container {
            max-width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="text-center mb-4">
            <i class="fas fa-sign-in-alt fa-5x"></i>
            <!-- LogIn ikonu -->
        </div>
        <div class="form-group">
            <label for="UserName">Kullanıcı Adı:</label>
            <asp:TextBox ID="UserName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="Password">Şifre:</label>
            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
        </div>
        <asp:Button ID="LogIn" runat="server" OnClick="LogIn_Click" Text="Giriş Yap" CssClass="btn btn-primary" />
    </form>
</body>
</html>
