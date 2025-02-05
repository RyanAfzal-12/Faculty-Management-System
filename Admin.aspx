<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApp.Admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #1a1a2e; /* Dark navy background */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff; /* Light text for readability */
        }

        .container {
            text-align: center;
            background-color: #162447; /* Darker blue for container */
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
            width: 400px;
        }

        h1 {
            font-size: 2em;
            color: #00a8ff; /* Light blue */
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1em;
            color: #eaeaea;
            margin-bottom: 30px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .btn-primary {
            background-color: #00a8ff;
            border: none;
            color: #fff;
        }

        .btn-primary:hover {
            background-color: #007bbf;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Admin Dashboard</h1>
            <p>Welcome to the Admin Dashboard. Choose an option below to manage the site.</p>
            <asp:Button ID="btnManageUsers" runat="server" Text="Manage Users" CssClass="btn btn-primary" OnClick="ManageUsers" />
            <asp:Button ID="btnSettings" runat="server" Text="Settings" CssClass="btn btn-primary" OnClick="OpenSettings" />
        </div>
    </form>
</body>
</html>
