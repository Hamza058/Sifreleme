<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sifreleme.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Rehber Şifreleme</title>
    <style>
        .orta {
            text-align: center;
        }
        .orta2{
            margin-left: 40%
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="orta">
            <table border="1" class="orta2">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Ad"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Soyad"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSoyad" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Telefon"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Şifrele" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Şifre Çöz" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lbl3" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>