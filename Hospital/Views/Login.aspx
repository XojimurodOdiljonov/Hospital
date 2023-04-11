<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hospital.Views.Login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Libs/Bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../CSS/Login.css" />
</head>
<body style="background-image: url(../Assests/Images/Login.jpg); background-size: cover">

    <div class="container-fluid">
        <div class="row" style="height: 120px"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5">
                <h1 class="T pl-2">Поликлиника</h1>
                <form id="form1" runat="server">

                    <div class="mb-3">
                        <label for="EmailTb" class="form-label">Email Адрес</label>
                        <input type="email" class="form-control" id="EmailTb" placeholder="Email Id" runat="server" required="required"/>
                    </div>

                    <div class="mb-3">
                        <label for="PasswordTb" class="form-label">Пароль</label>
                        <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server" required="required" />
                    </div>
                    <div class="mb-3 form-check">
                        <asp:DropDownList ID="RoleCb" runat="server" class="form-control">
                            <asp:ListItem>--Выбрать--</asp:ListItem>
                            <asp:ListItem>Админ</asp:ListItem>
                            <asp:ListItem>Доктор</asp:ListItem>
                            <asp:ListItem>Секритарь</asp:ListItem>
                            <asp:ListItem>Лаборатория</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="d-grid">
                        <label runat="server" id="ErrMsg" class="text-danger"></label><br />
                        <asp:Button ID="EditBtn" runat="server" Text="Вход" class="btn btn-primary btn-block" OnClick="EditBtn_Click" />
                    </div>
                </form>
                <div class="row" style="height: 10px">
                </div>
            </div>
            <div class="col-md-3">
            </div>
        </div>
</body>
</html>
