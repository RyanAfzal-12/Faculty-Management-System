<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="WebApp.Student" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Dashboard</title>
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
            color: #fff;
        }

        .container {
            text-align: center;
            background-color: #162447; /* Dark blue container */
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
            width: 400px;
        }

        h1 {
            font-size: 2em;
            color: #00a8ff; /* Light blue for heading */
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
            <h1>Student Dashboard</h1>
            <p>Welcome! Use the options below to manage your courses and activities.</p>
            <asp:Button ID="btnViewCourses" runat="server" Text="View Courses" CssClass="btn btn-primary" OnClick="ViewCourses" />
            <asp:Button ID="btnCheckGrades" runat="server" Text="Check Grades" CssClass="btn btn-primary" OnClick="CheckGrades" />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-primary" OnClick="Logout" />
        </div>
    </form>
</body>
</html>
