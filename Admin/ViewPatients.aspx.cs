using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MedicalRecordsystem
{
    public partial class ViewPatients : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["MedRecDBConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPatients();
            }
        }

        private void LoadPatients()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = @"
                SELECT 
                    P.PatientID,
                    P.Name AS PatientName,
                    P.Age,
                    P.Gender,
                    P.Contact,
                    D.Name AS DoctorName,
                    A.AppointmentDate,
                    A.Status
                FROM Patients P
                LEFT JOIN Appointments A ON P.PatientID = A.PatientID
                LEFT JOIN Doctors D ON A.DoctorID = D.DoctorID";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridViewPatients.DataSource = dt;
                GridViewPatients.DataBind();
            }
        }
    }
}
