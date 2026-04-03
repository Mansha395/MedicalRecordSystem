<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MedRecSystem.Admin.AdminLogin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Login</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
        }

        .main-container {
            display: flex;
            height: 100vh;
        }

        /* LEFT SIDE */
        .left-panel {
            width: 50%;
            background: linear-gradient(rgba(64,145,108,0.7), rgba(45,106,79,0.8)),
                        url('../Images/hospital.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 50px;
        }

        .left-panel h1 {
            font-size: 36px;
            margin-bottom: 15px;
        }

        .left-panel p {
            font-size: 18px;
            line-height: 1.6;
        }

        /* RIGHT SIDE */
        .right-panel {
            width: 50%;
            background: #f1faee;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            width: 320px;
            padding: 30px;
            background: white;
            border-radius: 15px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
            text-align: center;
        }

        .login-box h2 {
            color: #2d6a4f;
            margin-bottom: 20px;
        }

        .input-box {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        .btn-login {
            background: #40916c;
            color: white;
            padding: 10px 25px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        .btn-login:hover {
            background: #2d6a4f;
        }

        .error {
            color: red;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="main-container">

            <!-- LEFT PANEL -->
            <div class="left-panel">
                <h1>Medical Record System</h1>
                <p>
                    Manage patient records, track medical history, and streamline hospital operations.
                    This system helps administrators monitor data efficiently and ensure better healthcare management.
                </p>
            </div>

            <!-- RIGHT PANEL -->
            <div class="right-panel">
                <div class="login-box">

                    <h2>Admin Login</h2>

                    <asp:TextBox ID="txtUsername" runat="server" CssClass="input-box" Placeholder="Username"></asp:TextBox>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Password"></asp:TextBox>

                    <br />

                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnLogin_Click" />

                    <br /><br />

                    <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>

                </div>
            </div>

        </div>

    </form>
</body>
</html>
