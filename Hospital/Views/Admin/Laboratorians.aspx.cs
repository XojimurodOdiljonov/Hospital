using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital.Views.Admin
{
    public partial class Laboratorians : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowLaboratorian();
        }

        Models.Functions Con;
        private void ShowLaboratorian()
        {
            string Query = "Select * from LaboratorianTbl";
            LaboratorianGV.DataSource = Con.GetDatas(Query);
            LaboratorianGV.DataBind();
        }

        // Add This Overriden Method
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = LabNameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAdd = LabAddressTb.Value;
                string LabGen = GenderCb.SelectedItem.Value;

                string Query = "Insert into LaboratorianTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAdd, LabGen);
                Con.SetDatas(Query);
                ShowLaboratorian();
                ErrMsg.InnerText = "Лаборарнт Добавлен!!!";

                LabNameTb.Value = "";
                EmailTb.Value = "";
                LabAddressTb.Value = "";
                PasswordTb.Value = "";
                PhoneTb.Value = "";
                GenderCb.SelectedIndex = -1;
            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        int Key = 0;

        protected void DoctorsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabNameTb.Value = LaboratorianGV.SelectedRow.Cells[2].Text;
            EmailTb.Value = LaboratorianGV.SelectedRow.Cells[3].Text;
            PasswordTb.Value = LaboratorianGV.SelectedRow.Cells[4].Text;
            PhoneTb.Value = LaboratorianGV.SelectedRow.Cells[5].Text;
            LabAddressTb.Value = LaboratorianGV.SelectedRow.Cells[6].Text;
            GenderCb.SelectedItem.Value = LaboratorianGV.SelectedRow.Cells[7].Text;

            if (LabNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(LaboratorianGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = LabNameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabAdd = LabAddressTb.Value;
                string LabGen = GenderCb.SelectedItem.Value;

                string Query = "Изменение LaboratorianTbl set LabName = '{0}',LabEmail = '{1}',LabPass = '{2}',LapPhone = '{3}',LabAddress = '{4}',LabGen = '{5}' where LabId = {6}";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAdd, LabGen, LaboratorianGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowLaboratorian();
                ErrMsg.InnerText = "Лаборарнт Изменень!!!";

                LabNameTb.Value = "";
                EmailTb.Value = "";
                LabAddressTb.Value = "";
                PasswordTb.Value = "";
                PhoneTb.Value = "";
                GenderCb.SelectedIndex = -1;
            }

            catch (Exception Ex)
            {

                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LabNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Выбран Лаборант!!!";
                }
                else
                {
                    string Query = "delete from LaboratorianTbl where LabId={0}";
                    Query = string.Format(Query, LaboratorianGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowLaboratorian();
                    ErrMsg.InnerText = "Лаборант удалён!!!";

                    Key = 0;

                    LabNameTb.Value = "";
                    EmailTb.Value = "";
                    LabAddressTb.Value = "";
                    PasswordTb.Value = "";
                    PhoneTb.Value = "";
                    GenderCb.SelectedIndex = -1;
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}