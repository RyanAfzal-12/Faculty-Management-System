<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
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
            color: #162447;
            margin-bottom: 30px;
            text-align: center;
        }

        label {
            font-weight: bold;
            color: #0f3460; 
            display: block; 
            margin-bottom: 5px; 
        }

        .form-control {
            border: 1px solid #0f3460; 
            border-radius: 5px;
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .form-control:focus {
            border-color: #00a8ff; 
            box-shadow: 0 0 5px rgba(0, 168, 255, 0.5);
        }

        .btn {
            width: 100%; 
            margin-top: 10px; 
            border-radius: 5px;
            background-color: #224870;
            padding: 12px;
            font-weight: bold;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .btn-primary {
            background-color: #00a8ff; 
            border: none;
            color: white;
        }

        .btn-primary:hover {
            background-color: #007bbf; 
        }

        #lblError {
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
            <h2>User Login</h2>
            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter your username">

                </asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" 
                    placeholder="Enter your password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" style="background-color:#224870"
                    Text ="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
            </div>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
