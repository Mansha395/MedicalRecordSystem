using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MedRecSystem.Admin
{
    public partial class ManageAppointments : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["MedRecDBConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        void LoadData()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = @"
                SELECT 
                    P.PatientID,
                    P.Name AS PatientName,
                    D.Name AS DoctorName,
                    A.AppointmentDate,
                    A.Status
                FROM Patients P
                LEFT JOIN Appointments A ON P.PatientID = A.PatientID
                LEFT JOIN Doctors D ON A.DoctorID = D.DoctorID";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "EditRow")
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    string q = "SELECT * FROM Patients WHERE PatientID=@id";
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.Parameters.AddWithValue("@id", id);

                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        hiddenID.Value = dr["PatientID"].ToString();
                        txtName.Text = dr["Name"].ToString();
                        txtAge.Text = dr["Age"].ToString();
                        txtGender.Text = dr["Gender"].ToString();
                        txtContact.Text = dr["Contact"].ToString();
                    }
                }
            }
            else if (e.CommandName == "DeleteRow")
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    SqlCommand cmd1 = new SqlCommand("DELETE FROM Appointments WHERE PatientID=@id", con);
                    cmd1.Parameters.AddWithValue("@id", id);
                    cmd1.ExecuteNonQuery();

                    SqlCommand cmd2 = new SqlCommand("DELETE FROM Patients WHERE PatientID=@id", con);
                    cmd2.Parameters.AddWithValue("@id", id);
                    cmd2.ExecuteNonQuery();
                }

                LoadData();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string q = @"UPDATE Patients 
                             SET Name=@n, Age=@a, Gender=@g, Contact=@c 
                             WHERE PatientID=@id";

                SqlCommand cmd = new SqlCommand(q, con);

                cmd.Parameters.AddWithValue("@id", hiddenID.Value);
                cmd.Parameters.AddWithValue("@n", txtName.Text);
                cmd.Parameters.AddWithValue("@a", txtAge.Text);
                cmd.Parameters.AddWithValue("@g", txtGender.Text);
                cmd.Parameters.AddWithValue("@c", txtContact.Text);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            LoadData();
        }
    }
}
