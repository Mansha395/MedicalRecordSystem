using System;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace MedicalRecordSystem.Admin
{
    public partial class DoctorLogin : System.Web.UI.Page
    {
        string connStr = "Data Source=.\\SQLEXPRESS;Initial Catalog=MedRecDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Get input name
            string inputName = txtName.Text.Trim();

            // Add "Dr." automatically
            string fullName = "Dr. " + inputName;

            string password = txtPassword.Text.Trim();

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT DoctorID, Name FROM Doctors WHERE Name=@Name AND Password=@Password";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", fullName);
                cmd.Parameters.AddWithValue("@Password", password);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["DoctorID"] = dr["DoctorID"].ToString();
                    Session["DoctorName"] = dr["Name"].ToString();

                    Response.Redirect("DoctorDashboard.aspx");
                }
                else
                {
                    lblMsg.Text = "Invalid Name or Password";
                }
            }
        }
    }
}
