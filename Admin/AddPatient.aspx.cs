using System;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace MedicalRecordSystem.Admin
{
    public partial class AddPatient : System.Web.UI.Page
    {
        string connStr = "Data Source=.;Initial Catalog=MedicalDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text.Trim();
                string ageText = txtAge.Text.Trim();
                string gender = ddlGender.SelectedValue;
                string contact = txtContact.Text.Trim();
                string password = txtPassword.Text.Trim();

                if (name == "" || ageText == "" || gender == "" || contact == "" || password == "")
                {
                    Response.Write("<script>alert('Fill all fields')</script>");
                    return;
                }

                int age = Convert.ToInt32(ageText);

                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string query = @"INSERT INTO Patients 
                                    (Name, Age, Gender, Contact, Password) 
                                    VALUES 
                                    (@Name, @Age, @Gender, @Contact, @Password)";

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Age", age);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@Contact", contact);
                    cmd.Parameters.AddWithValue("@Password", password);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                Response.Write("<script>alert('Patient Added Successfully!')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
            }
        }
    }
}
