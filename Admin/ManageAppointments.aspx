<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageAppointments.aspx.cs" Inherits="MedRecSystem.Admin.ManageAppointments" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Manage Appointments</title>

    <style>
        body {
            font-family: 'Segoe UI';
            background: #f5ebe0;
        }

        .container {
            width: 90%;
            margin: auto;
            margin-top: 30px;
            padding: 20px;
            background: #ede0d4;
            border-radius: 12px;
        }

        h2 {
            text-align: center;
            color: #6f4e37;
        }

        .grid {
            width: 100%;
            margin-top: 20px;
        }

        .grid th {
            background: #d6ccc2;
            padding: 10px;
        }

        .grid td {
            background: #f5ebe0;
            padding: 10px;
            text-align: center;
        }

        .btn {
            padding: 6px 12px;
            background: #6f4e37;
            color: white;
            border-radius: 6px;
            border: none;
            cursor: pointer;
        }

        .form-box {
            margin-top: 30px;
            padding: 20px;
            background: #e3d5ca;
            border-radius: 10px;
        }

        .input {
            padding: 8px;
            margin: 5px;
            width: 200px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

<div class="container">

    <h2>Manage Appointments</h2>

    <!-- GRID -->
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        CssClass="grid" OnRowCommand="GridView1_RowCommand">

        <Columns>
            <asp:BoundField DataField="PatientID" HeaderText="Patient ID" />
            <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
            <asp:BoundField DataField="DoctorName" HeaderText="Doctor" />
            <asp:BoundField DataField="AppointmentDate" HeaderText="Date" />
            <asp:BoundField DataField="Status" HeaderText="Status" />

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button runat="server" Text="Edit" CssClass="btn"
                        CommandName="EditRow"
                        CommandArgument='<%# Eval("PatientID") %>' />

                    <asp:Button runat="server" Text="Delete" CssClass="btn"
                        CommandName="DeleteRow"
                        CommandArgument='<%# Eval("PatientID") %>' />
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>

    <!-- EDIT FORM -->
    <div class="form-box">

        <asp:HiddenField ID="hiddenID" runat="server" />

        <asp:TextBox ID="txtName" runat="server" CssClass="input" placeholder="Name" />
        <asp:TextBox ID="txtAge" runat="server" CssClass="input" placeholder="Age" />
        <asp:TextBox ID="txtGender" runat="server" CssClass="input" placeholder="Gender" />
        <asp:TextBox ID="txtContact" runat="server" CssClass="input" placeholder="Contact" />

        <br />

        <asp:Button ID="btnUpdate" runat="server" Text="Update"
            CssClass="btn" OnClick="btnUpdate_Click" />

    </div>

</div>

</form>
</body>
</html>
