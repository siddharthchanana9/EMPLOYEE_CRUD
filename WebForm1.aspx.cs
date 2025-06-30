using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_EMPLOYEE
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
        }

        protected void InsertRecord(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                TextBox nameTextBox = (TextBox)GridView1.FooterRow.FindControl("FooterName");
                TextBox emailTextBox = (TextBox)GridView1.FooterRow.FindControl("FooterEmail");
                DropDownList genderDropDown = (DropDownList)GridView1.FooterRow.FindControl("FooterDdlGender");
                TextBox ageTextBox = (TextBox)GridView1.FooterRow.FindControl("FooterAge");
                TextBox salaryTextBox = (TextBox)GridView1.FooterRow.FindControl("FooterSalary");

                if (nameTextBox != null && emailTextBox != null && genderDropDown != null && ageTextBox != null && salaryTextBox != null)
                {
                    string name = nameTextBox.Text.Trim();
                    string email = emailTextBox.Text.Trim();
                    string gender = genderDropDown.SelectedValue;
                    string age = ageTextBox.Text.Trim();
                    string salary = salaryTextBox.Text.Trim();

                    SqlDataSource1.InsertParameters["Name"].DefaultValue = name;
                    SqlDataSource1.InsertParameters["Email"].DefaultValue = email;
                    SqlDataSource1.InsertParameters["Gender"].DefaultValue = gender;
                    SqlDataSource1.InsertParameters["Age"].DefaultValue = age;
                    SqlDataSource1.InsertParameters["Salary"].DefaultValue = salary;

                    SqlDataSource1.Insert();
                    GridView1.DataBind();
                }
            }
        }
    }
}
