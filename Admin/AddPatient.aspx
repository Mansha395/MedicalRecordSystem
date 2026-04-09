<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPatient.aspx.cs" Inherits="MedicalRecordSystem.Admin.AddPatient" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Patient</title>

    <style>
        body {
            font-family: 'Segoe UI';
            background: #eef6f9;
        }

        .container {
            width: 400px;
            margin: 60px auto;
            padding: 30px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #2a6f97;
        }

        .input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: #2a6f97;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

<div class="container">
    <h2>Add Patient</h2>

    <asp:TextBox ID="txtName" runat="server" CssClass="input" placeholder="Full Name" />
    <asp:TextBox ID="txtAge" runat="server" CssClass="input" placeholder="Age" />
    
    <asp:DropDownList ID="ddlGender" runat="server" CssClass="input">
        <asp:ListItem Text="Select Gender" Value="" />
        <asp:ListItem Text="Male" Value="Male" />
        <asp:ListItem Text="Female" Value="Female" />
    </asp:DropDownList>

    <asp:TextBox ID="txtContact" runat="server" CssClass="input" placeholder="Contact" />
    <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Password" />

    
    <asp:Button ID="btnAdd" runat="server" Text="Add Patient" CssClass="btn" OnClick="btnAdd_Click" />

</div>

</form>
</body>
</html>
