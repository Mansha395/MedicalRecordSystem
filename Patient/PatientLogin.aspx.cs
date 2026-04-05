using System;
using System.Data.SqlClient;

namespace MedicalRecordSystem.Patient
{
    public partial class PatientLogin : System.Web.UI.Page
    {
        string connStr = "Data Source=.\\SQLEXPRESS;Initial Catalog=MedRecDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string patientID = txtPatientID.Text.Trim();
            string password = txtPassword.Text.Trim();

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT PatientID, Name FROM Patients WHERE PatientID=@PatientID AND Password=@Password";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@PatientID", patientID);
                cmd.Parameters.AddWithValue("@Password", password);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["PatientID"] = dr["PatientID"].ToString();
                    Session["PatientName"] = dr["Name"].ToString();

                    Response.Redirect("PatientDashboard.aspx");
                }
                else
                {
                    lblMsg.Text = "Invalid Patient ID or Password";
                }
            }
        }
    }
}
