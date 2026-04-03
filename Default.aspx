<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MedicalSystem.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Medical Record System</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: linear-gradient(to right, #d8f3dc, #f1faee);
        }

        .container {
            text-align: center;
            padding: 60px 20px;
        }

        h1 {
            color: #1b4332;
            font-size: 40px;
        }

        p {
            color: #344e41;
            font-size: 18px;
            max-width: 700px;
            margin: 10px auto 40px;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 30px;
        }

        .card {
            width: 220px;
            padding: 25px;
            border-radius: 15px;
            background: white;
            box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
            text-align: center;
        }

        .card h3 {
            color: #2d6a4f;
        }

        .btn {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
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

    <div class="container">

        <h1>Medical Record Management System</h1>

        <p>
            A centralized platform to manage patient records, doctor interactions, and hospital operations efficiently.
            Choose your role below to continue.
        </p>

        <div class="cards">

            <!-- ADMIN -->
            <div class="card">
                <h3>Admin</h3>
                <p>Manage doctors, patients, and system data.</p>
                <a href="Admin/AdminLogin.aspx" class="btn">Admin Login</a>
            </div>

            <!-- DOCTOR -->
            <div class="card">
                <h3>Doctor</h3>
                <p>Access patient records and manage treatments.</p>
                <a href="Doctor/DoctorLogin.aspx" class="btn">Doctor Login</a>
            </div>

            <!-- PATIENT -->
            <div class="card">
                <h3>Patient</h3>
                <p>View, track progress, and update health.</p>
                <a href="Patient/PatientLogin.aspx" class="btn">Patient Login</a>
            </div>

        </div>

    </div>

</form>
</body>
</html>
