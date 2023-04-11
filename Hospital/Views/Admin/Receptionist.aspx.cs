using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital.Views.Admin
{
    public partial class Receptionist : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowReceptionist(); 
        }
        // Add This Overriden Method
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }

        private void ShowReceptionist()
        {
            string Query = "Select * from ReceptionistTbl";
            ReceptionistGV.DataSource = Con.GetDatas(Query);
            ReceptionistGV.DataBind();
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RName = RecNameTb.Value;
                string REmail = RecEmailTb.Value;
                string RAdd = AddressTb.Value;
                string RPhone = PhoneTb.Value;
                string Password = PasswordTb.Value;
                string Query = "Insert into ReceptionistTbl values('{0}','{1}','{2}','{3}','{4}')";
                Query = string.Format(Query, RName, REmail, RAdd, RPhone, Password);
                Con.SetDatas(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Администратор Добавлен!!!";

                RecNameTb.Value = "";
                RecEmailTb.Value = "";
                AddressTb.Value = "";
                PhoneTb.Value = "";
                PasswordTb.Value = "";
            }

            catch (Exception Ex)
            {

                ErrMsg.InnerText = Ex.Message;
            }
        }

        int Key = 0;

        protected void ReceptionistGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            RecNameTb.Value = ReceptionistGV.SelectedRow.Cells[2].Text;
            RecEmailTb.Value = ReceptionistGV.SelectedRow.Cells[3].Text;
            AddressTb.Value = ReceptionistGV.SelectedRow.Cells[4].Text;
            PhoneTb.Value = ReceptionistGV.SelectedRow.Cells[5].Text;
            PasswordTb.Value = ReceptionistGV.SelectedRow.Cells[6].Text;

            if (RecNameTb.Value == "")
            {
                Key= 0;
            }
            else
            {
                Key = Convert.ToInt32(ReceptionistGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(RecNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Выбран секритарь!!!";
                }
                else
                {
                    string Query = "delete from ReceptionistTbl where RecId={0}";
                    Query = string.Format(Query, ReceptionistGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowReceptionist();
                    ErrMsg.InnerText = "Администратор удалил!!!";

                    Key = 0;

                    RecNameTb.Value = "";
                    RecEmailTb.Value = "";
                    AddressTb.Value = "";
                    PhoneTb.Value = "";
                    PasswordTb.Value = "";
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
                string RName = RecNameTb.Value;
                string REmail = RecEmailTb.Value;
                string RAdd = AddressTb.Value;
                string RPhone = PhoneTb.Value;
                string Password = PasswordTb.Value;
                string Query = "Изменение ReceptionistTbl set RecName = '{0}',RecEmail = '{1}',RecAdd = '{2}',RecPhone = '{3}',RecPassword = '{4}' where RecId = {5}";
                Query = string.Format(Query, RName, REmail, RAdd, RPhone, Password, ReceptionistGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Администратор Изменил!!!";

                RecNameTb.Value = "";
                RecEmailTb.Value = "";
                AddressTb.Value = "";
                PhoneTb.Value = "";
                PasswordTb.Value = "";
            }

            catch (Exception Ex)
            {

                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}