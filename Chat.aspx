<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="StudentManagement.Chat1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        #chatHistoryContainer {
            height: 200px;
            overflow-y: scroll;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="my-4">
            <h2 class="font-weight-bold">Öğretmene Mesaj Gönder </h2>
            <p class="font-weight-bold">
                <asp:Button ID="main" runat="server" Height="40px" CssClass="btn btn-primary" OnClick="main_Click" Text="Anasayfa" Width="127px" />
            </p>
        </div>
        <div class="form-group" id="chatHistoryContainer">
            <asp:TextBox ID="ChatHistory" runat="server" CssClass="form-control" Enabled="False" TextMode="MultiLine" Rows="10"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="NewMessage" runat="server" CssClass="form-control" Height="100px" Rows="3"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="Send" runat="server" Text="Gönder" CssClass="btn btn-primary" OnClick="Send_Click1" />
        </div>
    </form>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
