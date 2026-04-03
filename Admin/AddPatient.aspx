<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="MedicalRecordSystem.Admin.AddPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
Age: <asp:TextBox ID="txtAge" runat="server"></asp:TextBox><br />
Password: <asp:TextBox ID="txtPass" runat="server"></asp:TextBox><br />

<asp:Button ID="btnAdd" runat="server" Text="Add Patient" OnClick="btnAdd_Click" />

        </div>
    </form>
</body>
</html>
