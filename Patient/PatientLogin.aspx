<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientLogin.aspx.cs" Inherits="MedicalRecordSystem.Patient.PatientLogin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Patient Login</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
        }

        .main {
            display: flex;
            height: 100vh;
        }

        /* LEFT */
        .left {
            width: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #eef2ff;
        }

        .login-box {
            width: 320px;
        }

        .login-box h2 {
            text-align: center;
            color: #4338ca;
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
            background: #4f46e5;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .msg {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        /* RIGHT */
        .right {
            width: 50%;
            background: linear-gradient(to right, #4f46e5, #818cf8);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 40px;
        }

        .quote {
            font-size: 22px;
            font-style: italic;
            line-height: 1.6;
        }

        .author {
            margin-top: 20px;
            opacity: 0.8;
        }
    </style>
</head>

<body>
<form runat="server">

<div class="main">

    <!-- LEFT LOGIN -->
    <div class="left">
        <div class="login-box">
            <h2>Patient Login</h2>

            <!-- IMPORTANT IDs -->
            <asp:TextBox ID="txtPatientID" runat="server" CssClass="input" placeholder="Enter Patient ID"></asp:TextBox>

            <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Enter Password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />

            <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>
        </div>
    </div>

    <!-- RIGHT QUOTE -->
    <div class="right">
        <div>
            <div class="quote">
                “Take care of your body. It’s the only place you have to live.”
            </div>
            <div class="author">
                – Jim Rohn
            </div>
        </div>
    </div>

</div>

</form>
</body>
</html>
