<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorLogin.aspx.cs" Inherits="MedicalRecordSystem.Admin.DoctorLogin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Doctor Login</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
        }

        .main {
            display: flex;
            height: 100vh;
        }

        /* LEFT SIDE (LOGIN) */
        .left {
            width: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #f9fafb;
        }

        .login-box {
            width: 320px;
        }

        .login-box h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #4f46e5;
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
            margin-top: 10px;
        }

        .msg {
            text-align: center;
            color: red;
            margin-top: 10px;
        }

        /* RIGHT SIDE (QUOTE) */
        .right {
            width: 50%;
            background: linear-gradient(to right, #4f46e5, #6366f1);
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
            font-size: 16px;
            opacity: 0.8;
        }
    </style>
</head>

<body>
<form runat="server">

    <div class="main">

        <!-- LEFT: LOGIN -->
        <div class="left">
            <div class="login-box">
                <h2>Doctor Login</h2>

                <!-- CHANGE: using Contact instead of Email -->
                <asp:TextBox ID="txtName" runat="server" CssClass="input" placeholder="Enter Name"></asp:TextBox>

<asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="Password"></asp:TextBox>


                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />

                <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>
            </div>
        </div>

        <!-- RIGHT: QUOTE -->
        <div class="right">
            <div>
                <div class="quote">
                    “Wherever the art of medicine is loved, there is also a love of humanity.”
                </div>
                <div class="author">
                    – Hippocrates
                </div>
            </div>
        </div>

    </div>

</form>
</body>
</html>
