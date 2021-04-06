<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebSecurity.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/Content.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
</head>
<body class="page-lg">
    <form id="form1" runat="server">
        <div class="container page-login">
            <div class="main-content">
                <section class="col-lg-6">
                    <div class="content-login form-control">
                        <div class="login-form">
                            <span style="text-align:center" class="lang">登錄</span>
                            <div class="main-form">
                                <div class="form-group row">
                                    User
                                    <asp:TextBox runat="server" ID="txtUser" CssClass="input-group" ></asp:TextBox>
                                </div>
                                <div class="form-group row">
                                    PassWord
                                    <asp:TextBox runat="server" ID="txtPassWord" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group row">
                                    <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn-primary" />
                                </div>
                                <div class="form-group row">
                                    <a href="#">Quên mật khẩu</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                
            </div>
        </div>
    </form>
</body>
</html>
