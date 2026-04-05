using System;

namespace MedicalRecordSystem.Admin
{
    public partial class DoctorDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DoctorID"] == null)
            {
                Response.Redirect("DoctorLogin.aspx");
            }
            else
            {
                lblDoctor.Text = "Welcome, " + Session["DoctorName"].ToString();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("DoctorLogin.aspx");
        }
    }
}
