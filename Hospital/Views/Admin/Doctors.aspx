<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="Hospital.Views.Admin.Doctors" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h2>Подробности о докторе</h2>
                <form>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Имя врача</label>
                        <input type="text" class="form-control" id="DocNameTb" runat="server"/>
                    </div>

                    <div class="mb-3">
                        <label for="DocPhoneTb" class="form-label">Тел-Номер</label>
                        <input type="text" class="form-control" id="DocPhoneTb" runat="server"/>
                    </div>

                    <div class="mb-3">
                        <label for="DocPhoneTb" class="form-label">Опыт</label>
                        <input type="text" class="form-control" id="DocExpTb" runat="server"/>
                    </div>

                    <div class="mb-3">
                        <label for="SpecialisationTb" class="form-label">Специализация</label>
                        <input type="text" class="form-control" id="SpecialisationTb" runat="server"/>
                    </div>

                    <div class="mb-3">
                        <label for="PasswordTb" class="form-label">Пароль</label>
                        <input type="text" class="form-control" id="PasswordTb" runat="server"/>
                    </div>

                    <div class="mb-3">
                        <label for="GenderCb" class="form-label">Пол</label>
                        <asp:DropDownList ID="GenderCb" runat="server" class="form-control">
                            <asp:ListItem>Мужской</asp:ListItem>
                            <asp:ListItem>Женский</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-3">
                        <label for="AddressTb" class="form-label">Адрес</label>
                        <input type="text" class="form-control" id="AddressTb" runat="server"/>
                    </div>

                    <div class="mb-3">
                        <label for="DOBTb" class="form-label">Дата рожденияa</label>
                        <input type="date" class="form-control" id="DOBTb" runat="server"/>
                    </div>

                    <div class="mb-3">
                        <label for="EmailTb" class="form-label">Email</label>
                        <input type="email" class="form-control" id="EmailTb" runat="server"/>
                    </div>
                    
                    <label runat="server" id="ErrMsg" class="text-danger"></label><br/>
                    <asp:Button ID="EditBtn" runat="server" Text="Изменить" class="btn btn-warning" OnClick="EditBtn_Click"/>
                    <asp:Button ID="AddBtn" runat="server" Text="Сохранить" class="btn btn-primary" OnClick="AddBtn_Click"/>
                    <asp:Button ID="DeleteBtn" runat="server" Text="Удалить" class="btn btn-danger" OnClick="DeleteBtn_Click"/>
                </form>
            </div>
            <div class="col-md-9">
                <div class="row">
                    <div class="col">
                        <img src="../../Assests/Images/Doctor.jpg" width="100%" height="400px" class="rounded-5"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Подробности о докторе</h1>
                        <asp:GridView ID="DoctorsGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DoctorsGV_SelectedIndexChanged1">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
