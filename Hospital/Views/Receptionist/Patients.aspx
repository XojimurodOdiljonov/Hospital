<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="Hospital.Views.Receptionist.Patients" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h2>Информация Поциента</h2>
                <form>
                    <div class="mb-3">
                        <label for="PatNameTb" class="form-label">Имя</label>
                        <input type="text" class="form-control" id="PatNameTb" runat="server"/>

                    </div>
                    <div class="mb-3">
                        <label for="PhoneTb" class="form-label">Тел-Номер</label>
                        <input type="text" class="form-control" id="PhoneTb" runat="server"/>
                    </div>
                    <div class="mb-3">
                        <label for="GenderCb" class="form-label">Пол</label>
                        <asp:DropDownList ID="GenderCb" runat="server" class="form-control">
                            <asp:ListItem>Мужской</asp:ListItem>
                            <asp:ListItem>Женский</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="DOBTb" class="form-label">Дата</label>
                        <input type="date" class="form-control" id="DOBTb" runat="server"/>

                    </div>
                    <div class="mb-3">
                        <label for="AddressTb" class="form-label">Адрес</label>
                        <input type="text" class="form-control" id="AddressTb" runat="server"/>
                    </div>

                    <div class="mb-3">
                        <label for="AllergyTb" class="form-label">Аллергии</label>
                        <input type="text" class="form-control" id="AllergyTb" runat="server"/>
                    </div>
                    

                    <label runat="server" id="ErrMsg" class="text-danger"></label><br/>
                    <asp:Button ID="EditBtn" runat="server" Text="Изменить" class="btn btn-warning" OnClick="EditBtn_Click" />
                    <asp:Button ID="AddBtn" runat="server" Text="Сохранить" class="btn btn-primary" OnClick="AddBtn_Click" />
                    <asp:Button ID="DeleteBtn" runat="server" Text="Удалить" class="btn btn-danger" OnClick="DeleteBtn_Click" />
                </form>
            </div>

            <div class="col-md-10">
                
                <div class="row">
                    <div class="col">
                        <h1>Информация Поциенты</h1>
                        <asp:GridView ID="PatientList" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="PatientList_SelectedIndexChanged">
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
