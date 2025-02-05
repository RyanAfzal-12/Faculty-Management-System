<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApp.Signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Signup</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
   <style>
    body {
        background-color: #7698B3; 
        font-family: 'Arial', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background-color: #BBC5AA; 
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        width: 400px;
    }

    h2 {
        color: #001f4d; 
        margin-bottom: 30px;
        text-align: center;
    }

    label {
        font-weight: bold;
        color: #001f4d;
        display: block; 
        margin-bottom: 5px;
    }

    .form-control {
        border: 1px solid #001f4d; 
        border-radius: 5px;
        padding: 10px;
        margin-bottom: 20px;
        transition: border-color 0.3s, box-shadow 0.3s;
        width: 100%;
    }

    .form-control:focus {
        border-color: #007bff; 
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    .btn {
        width: 48%;
        margin: 5px; 
        border-radius: 5px;
        padding: 12px; 
        font-weight: bold;
        transition: background-color 0.3s, border-color 0.3s;
    }

    .btn-primary {
        background-color: #007bff; 
        border: none;
        color: white;
    }

    .btn-primary:hover {
        background-color: #0056b3; 
    }

    .btn-secondary {
        background-color: #6c757d;
        border: none;
        color: white;
    }

    .btn-secondary:hover {
        background-color: #5a6268; 
    }
    .button-container {
    display: flex;
    justify-content: center;
    gap: 10px; 
}

.btn {
    width: 45%; 
    margin: 0; 
    border-radius: 5px;
    padding: 12px;
    font-weight: bold;
    transition: background-color 0.3s, border-color 0.3s;
}


    #lblMessage {
        text-align: center;
        margin-top: 15px;
        font-weight: bold;
        color: red; 
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>User Signup</h2>
            <div class="form-group">
                <label for="txtUserName">User Name:</label>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" 
                    placeholder="Enter your username"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" 
                    CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="ddlAccessLevel">Access Level:</label>
                <asp:DropDownList ID="ddlAccessLevel" runat="server" CssClass="form-control">
                    <asp:ListItem Value="0">0</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="ddlStatus">Status:</label>
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                    <asp:ListItem Value="0">Inactive</asp:ListItem>
                    <asp:ListItem Value="1">Active</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group text-center">
            <div class="button-container">
                 <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="btn btn-primary" OnClick="btnSignup_Click" />
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-secondary" OnClick="btnLogin_Click" />
            </div>
        </div>
    
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
