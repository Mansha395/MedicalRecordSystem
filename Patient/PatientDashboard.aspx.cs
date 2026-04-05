using System;
using System.Data;
using System.Data.SqlClient;

namespace MedicalRecordSystem.Patient
{
    public partial class PatientDashboard : System.Web.UI.Page
    {
        string connStr = "Data Source=.\\SQLEXPRESS;Initial Catalog=MedRecDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            // 🔐 Prevent direct access
            if (Session["PatientID"] == null)
            {
                Response.Redirect("PatientLogin.aspx");
            }

            if (!IsPostBack)
            {
                LoadPatientDetails();
                LoadMedicalRecords();
            }
        }

        void LoadPatientDetails()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT * FROM Patients WHERE PatientID=@PatientID";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@PatientID", Session["PatientID"]);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblPatientID.Text = dr["PatientID"].ToString();
                    lblFullName.Text = dr["Name"].ToString();
                    lblName.Text = dr["Name"].ToString();
                    lblAge.Text = dr["Age"].ToString();
                    lblGender.Text = dr["Gender"].ToString();
                    lblContact.Text = dr["Contact"].ToString();
                }
            }
        }

        void LoadMedicalRecords()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT * FROM MedicalRecords WHERE PatientID=@PatientID";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@PatientID", Session["PatientID"]);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvRecords.DataSource = dt;
                gvRecords.DataBind();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("PatientLogin.aspx");
        }
    }
}
