<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="MedicalRecordSystem.Admin.AddDoctor" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Doctor</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: linear-gradient(to right, #ede9fe, #ddd6fe);
        }

        .container {
            width: 400px;
            margin: 80px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #5b21b6;
        }

        .input-box {
            width: 95%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: #7c3aed;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        .btn:hover {
            background: #5b21b6;
        }

        .msg {
            text-align: center;
            margin-top: 10px;
            color: green;
        }
    </style>

    <script>
        // Auto add "Dr." prefix and remove special characters
        function formatDoctorName(input) {
            let value = input.value;

            // Remove special characters (only letters and space)
            value = value.replace(/[^a-zA-Z\s]/g, '');

            // Remove existing "Dr." if user types again
            value = value.replace(/^Dr\.\s*/, '');

            // Add prefix if not empty
            if (value.length > 0) {
                value = "Dr. " + value;
            }

            input.value = value;
        }

        // Allow only numbers in phone field
        function onlyNumbers(event) {
            let charCode = event.which ? event.which : event.keyCode;

            // Allow digits only
            if (charCode < 48 || charCode > 57) {
                return false;
            }
            return true;
        }
    </script>

</head>

<body>
<form id="form1" runat="server">

    <div class="container">
        <h2>Add Doctor</h2>

        <!-- Doctor Name -->
        <asp:TextBox ID="txtName" runat="server" CssClass="input-box"
            Placeholder="Doctor Name" oninput="formatDoctorName(this)">
        </asp:TextBox>

        <!-- Specialization Dropdown -->
        <asp:DropDownList ID="ddlSpecialization" runat="server" CssClass="input-box">
            <asp:ListItem Text="Select Specialization" Value="" />
            <asp:ListItem Text="Cardiologist" />
            <asp:ListItem Text="Dermatologist" />
            <asp:ListItem Text="Neurologist" />
            <asp:ListItem Text="Pediatrician" />
            <asp:ListItem Text="Orthopedic" />
        </asp:DropDownList>

        <!-- Phone Number -->
        <asp:TextBox ID="txtPhone" runat="server" CssClass="input-box"
            Placeholder="Phone Number" onkeypress="return onlyNumbers(event)">
        </asp:TextBox>

        <!-- Email -->
        <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box"
            Placeholder="Email">
        </asp:TextBox>

        <!-- Button -->
        <asp:Button ID="btnAdd" runat="server" Text="Add Doctor"
            CssClass="btn" OnClick="btnAdd_Click" />

        <!-- Message -->
        <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>
    </div>

</form>
</body>
</html>