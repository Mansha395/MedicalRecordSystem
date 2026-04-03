using System;
using System.Data.SqlClient;
using System.Configuration;

namespace MedRecSystem.Admin
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCounts();
            }
        }

        void LoadCounts()
        {
            string connStr = ConfigurationManager.ConnectionStrings["MedRecDBConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                lblPatients.Text = new SqlCommand("SELECT COUNT(*) FROM Patients", conn).ExecuteScalar().ToString();
                lblDoctors.Text = new SqlCommand("SELECT COUNT(*) FROM Doctors", conn).ExecuteScalar().ToString();
                lblAppointments.Text = new SqlCommand("SELECT COUNT(*) FROM Appointments", conn).ExecuteScalar().ToString();
                lblRecords.Text = new SqlCommand("SELECT COUNT(*) FROM MedicalRecords", conn).ExecuteScalar().ToString();
            }
        }
    }
}
