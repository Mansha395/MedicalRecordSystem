<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorDashboard.aspx.cs" Inherits="MedicalRecordSystem.Admin.DoctorDashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Doctor Dashboard</title>

    <style>
        body {
            font-family: 'Segoe UI';
            background: #f1f5f9;
        }

        .header {
            background: #4f46e5;
            color: white;
            padding: 15px;
            text-align: center;
        }

        .container {
            padding: 20px;
        }

        .card {
            background: white;
            padding: 20px;
            margin: 10px 0;
            border-radius: 10px;
            box-shadow: 0px 2px 8px rgba(0,0,0,0.1);
        }

        .btn {
            padding: 10px;
            background: #ef4444;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
    </style>
</head>

<body>
<form runat="server">

    <div class="header">
        <h2>Doctor Dashboard</h2>
        <asp:Label ID="lblDoctor" runat="server"></asp:Label>
    </div>

    <div class="container">

        <div class="card">
            <h3>Welcome</h3>
            <p>Manage your patients and appointments here.</p>
        </div>

        <div class="card">
            <h3>Quick Actions</h3>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn" OnClick="btnLogout_Click" />
        </div>

    </div>

</form>
</body>
</html>
