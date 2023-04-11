<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Doctors/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="Prescriptions.aspx.cs" Inherits="Hospital.Views.Doctors.Presciption" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>Информация о поциентах</h2>
                <br /> <br />
                <form>
                    <div class="mb-3">
                        <label for="PatientCb" class="form-label">Поциент</label>
                        <asp:DropDownList ID="PatientCb" runat="server" class="form-control">
                            
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="MedicineTb" class="form-label">Медикаменты</label>
                        <input type="text" class="form-control" id="MedTb" runat="server"/>

                    </div>
                    <div class="mb-3">
                        <label for="TestCb" class="form-label">Кто</label>
                        <asp:DropDownList ID="TestCb" runat="server" class="form-control">

                        </asp:DropDownList>
                    </div>

                    <div class="mb-3">
                        <label for="CostTb" class="form-label">Общая стоимость</label>
                        <input type="text" class="form-control" id="CostTb" runat="server"/>
                    </div>

                    <div class="d-grid">
                    <label runat="server" id="ErrMsg" class="text-danger"></label><br/>
                    
                    <asp:Button ID="AddBtn" runat="server" Text="Сохранить" class="btn btn-warning btn-block" OnClick="AddBtn_Click"/>
                    
                    </div>
                    
                </form>
            </div>

            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assests/Images/Doctor.jpg" width="100%" height="400px" class="rounded-5" />
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Информация о поциентах</h1>
                        <asp:GridView ID="PrescriptionsGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None">
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
