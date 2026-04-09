<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="MedRecSystem.Admin.AdminDashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Dashboard</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: #f1faee;
        }

        /* NAVBAR */
        .navbar {
            background: #2d6a4f;
            padding: 15px;
            color: white;
            font-size: 20px;
        }

        /* SIDEBAR */
        .sidebar {
            width: 220px;
            height: 100vh;
            position: fixed;
            background: #40916c;
            padding-top: 20px;
        }

        .sidebar a {
            display: block;
            color: white;
            padding: 12px;
            text-decoration: none;
        }

        .sidebar a:hover {
            background: #2d6a4f;
        }

        /* MAIN CONTENT */
        .main {
            margin-left: 230px;
            padding: 20px;
        }

        .card {
            width: 220px;
            display: inline-block;
            margin: 15px;
            padding: 20px;
            border-radius: 12px;
            background: #d8f3dc;
            text-align: center;
            box-shadow: 0px 3px 10px rgba(0,0,0,0.1);
        }

        .card h3 {
            color: #1b4332;
        }

        .actions {
            margin-top: 30px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            background: #40916c;
            color: white;
            border-radius: 8px;
            text-decoration: none;
        }

        .btn:hover {
            background: #2d6a4f;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <!-- NAVBAR -->
    <div class="navbar">
        Admin Dashboard
    </div>

    <!-- SIDEBAR -->
    <div class="sidebar">
        <a href="AdminDashboard.aspx">Dashboard</a>
        <a href="ManagePatients.aspx">Manage Patients</a>
        <a href="ManageDoctors.aspx">Manage Doctors</a>
        <a href="ManageAppointments.aspx">Manage Appointments</a>
        <a href="AddPatient.aspx">Add Patient</a>
        <a href="AddDoctor.aspx">Add Doctor</a>
        <a href="#">Logout</a>
    </div>

    <!-- MAIN CONTENT -->
    <div class="main">

        <!-- CARDS -->
        <div class="card">
            <h3>Patients</h3>
            <asp:Label ID="lblPatients" runat="server" Text="0"></asp:Label>
        </div>

        <div class="card">
            <h3>Doctors</h3>
            <asp:Label ID="lblDoctors" runat="server" Text="0"></asp:Label>
        </div>

        <div class="card">
            <h3>Appointments</h3>
            <asp:Label ID="lblAppointments" runat="server" Text="0"></asp:Label>
        </div>

        <div class="card">
            <h3>Records</h3>
            <asp:Label ID="lblRecords" runat="server" Text="0"></asp:Label>
        </div>

        <!-- ACTION BUTTONS -->
        <div class="actions">
            <a href="AddPatient.aspx" class="btn">+ Add Patient</a>
            <a href="AddDoctor.aspx" class="btn">+ Add Doctor</a>
            <a href="ManageAppointments.aspx" class="btn">Manage Appointments</a>
            <a href="ManagePatients.aspx" class="btn">Manage Patients</a>
        </div>

    </div>

</form>
</body>
</html>
