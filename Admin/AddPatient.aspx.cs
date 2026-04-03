using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicalRecordSystem.Admin
{
    public partial class AddPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "INSERT INTO Patients (Name, Age, Password) VALUES (@name, @age, @pass)";

        }
    }
}