<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientDashboard.aspx.cs" Inherits="MedicalRecordSystem.Patient.PatientDashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Patient Dashboard</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: #f3f4f6;
        }

        .header {
            background: #4f46e5;
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
        }

        .container {
            padding: 20px;
        }

        .card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            box-shadow: 0px 2px 8px rgba(0,0,0,0.1);
        }

        .logout-btn {
            background: #ef4444;
            border: none;
            padding: 8px 15px;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        .grid {
            width: 100%;
            border-collapse: collapse;
        }

        .grid th, .grid td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        .grid th {
            background: #eef2ff;
        }
    </style>
</head>

<body>
<form runat="server">

    <!-- HEADER -->
    <div class="header">
        <div>
            Welcome, <asp:Label ID="lblName" runat="server"></asp:Label>
        </div>

        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="logout-btn" OnClick="btnLogout_Click" />
    </div>

    <div class="container">

        <!-- PATIENT INFO -->
        <div class="card">
            <h3>Your Details</h3>
            <p><b>Patient ID:</b> <asp:Label ID="lblPatientID" runat="server"></asp:Label></p>
            <p><b>Name:</b> <asp:Label ID="lblFullName" runat="server"></asp:Label></p>
            <p><b>Age:</b> <asp:Label ID="lblAge" runat="server"></asp:Label></p>
            <p><b>Gender:</b> <asp:Label ID="lblGender" runat="server"></asp:Label></p>
            <p><b>Contact:</b> <asp:Label ID="lblContact" runat="server"></asp:Label></p>
        </div>

        <!-- MEDICAL RECORDS -->
        <div class="card">
            <h3>Your Medical Records</h3>

            <asp:GridView ID="gvRecords" runat="server" CssClass="grid" AutoGenerateColumns="true"></asp:GridView>
        </div>

    </div>

</form>
</body>
</html>
