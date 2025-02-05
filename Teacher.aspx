<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="WebApp.Teacher" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Dashboard</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #1a1a2e; 
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff;
        }

        .container {
            text-align: center;
            background-color: #162447; 
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
            width: 400px;
        }

        h1 {
            font-size: 2em;
            color: #00a8ff; 
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
    <form id="form2" runat="server">
        <div class="container">
            <h1>Teacher Dashboard</h1>
            <p>Welcome! Use the options below to manage your activities.</p>
            <asp:Button ID="btnManageCourses" runat="server" Text="Manage Courses" CssClass="btn btn-primary" OnClick="ManageCourses" />
            <asp:Button ID="btnViewSchedule" runat="server" Text="View Schedule" CssClass="btn btn-primary" OnClick="ViewSchedule" />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-primary" OnClick="Logout" />
        </div>
    </form>
</body>
</html>
