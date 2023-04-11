using Hospital.Views.Admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital.Views.Receptionist
{
    public partial class Patients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowPatient();
        }
        Models.Functions Con;
        private void ShowPatient()
        {
            string Query = "Select * from PatientTbl";
            PatientList.DataSource = Con.GetDatas(Query);
            PatientList.DataBind();
        }

        // Add This Overriden Method
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string User = Session["uid"] as string;
                string PatName = PatNameTb.Value;
                string PatPhone = PhoneTb.Value;
                string PatGen = GenderCb.SelectedItem.Value;
                string PatDOB = DOBTb.Value;
                string PatAdd = AddressTb.Value;
                string PatAl = AllergyTb.Value;

                string Query = "Insert into PatientTbl values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                Query = string.Format(Query, PatName, PatPhone, PatGen, PatDOB, PatAdd, PatAl, User);
                Con.SetDatas(Query);
                ShowPatient();
                ErrMsg.InnerText = "Поциент Добавлен!!!";

                PatNameTb.Value = "";
                PhoneTb.Value = "";
                AddressTb.Value = "";
                AllergyTb.Value = "";
                GenderCb.SelectedIndex = -1;
            }

            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void PatientList_SelectedIndexChanged(object sender, EventArgs e)
        {
            PatNameTb.Value = PatientList.SelectedRow.Cells[2].Text;
            PhoneTb.Value = PatientList.SelectedRow.Cells[3].Text;
            GenderCb.SelectedItem.Value = PatientList.SelectedRow.Cells[4].Text;
            DOBTb.Value = PatientList.SelectedRow.Cells[5].Text;
            AddressTb.Value = PatientList.SelectedRow.Cells[6].Text;
            AllergyTb.Value = PatientList.SelectedRow.Cells[7].Text;

            if (PatNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(PatientList.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PatNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Выбран";
                }
                else
                {
                    string Query = "delete from PatientTbl where PatId = '{0}'";
                    Query = string.Format(Query, PatientList.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowPatient();
                    ErrMsg.InnerText = "Удалено";
                    Key = 0;

                    PatNameTb.Value = "";
                    PhoneTb.Value = "";
                    AddressTb.Value = "";
                    AllergyTb.Value = "";
                    GenderCb.SelectedIndex = -1;
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string PatName = PatNameTb.Value;
                string PatPhone = PhoneTb.Value;
                string PatGen = GenderCb.SelectedItem.Value;
                string PatDOB = DOBTb.Value;
                string PatAdd = AddressTb.Value;
                string PatAl = AllergyTb.Value;

                string Query = "update PatientTbl set PatName = '{0}', PatPhone = '{1}', PatGen = '{2}', PatDOB = '{3}', PatAdd = '{4}', PatAllergy = '{5}' where PatId = '{6}'";
                Query = string.Format(Query, PatName, PatPhone,PatGen, PatDOB, PatAdd, PatAl, PatientList.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowPatient();
                ErrMsg.InnerText = "Изменено";

                PatNameTb.Value = "";
                PhoneTb.Value = "";
                AddressTb.Value = "";
                AllergyTb.Value = "";
                GenderCb.SelectedIndex = -1;

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}