<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPatients.aspx.cs" Inherits="MedicalRecordsystem.ViewPatients" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Patient Records</title>

    <style>
        body {
            font-family: Arial;
            background-color: #fff9db;
        }

        .container {
            width: 90%;
            margin: auto;
            margin-top: 40px;
            padding: 20px;
            background-color: #ffe4ec;
            border-radius: 12px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #c2185b;
        }

        .grid {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .grid th {
            background-color: #ffb6c1;
            padding: 10px;
        }

        .grid td {
            background-color: #fff0f5;
            padding: 10px;
            text-align: center;
        }

        .grid tr:hover {
            background-color: #ffe4e1;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>Patient Records with Doctor & Appointment</h2>

            <asp:GridView ID="GridViewPatients" runat="server" CssClass="grid" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="PatientID" HeaderText="ID" />
                    <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" />
                    <asp:BoundField DataField="DoctorName" HeaderText="Doctor" />
                    <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment Time" DataFormatString="{0:dd-MMM-yyyy hh:mm tt}" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
