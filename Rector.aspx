<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rector.aspx.cs" Inherits="WebApp.Rector" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recto</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #162447; /* Deep blue background */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff; /* Light text color for contrast */
        }

        .container {
            text-align: center;
            background-color: #1f4068; /* Dark blue container */
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
            width: 400px;
        }

        h1 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #00a8ff; /* Light blue for heading */
        }

        p {
            font-size: 1.1em;
            color: #eaeaea;
            margin-bottom: 30px;
        }

        .btn {
            width: 100%; /* Full width for buttons */
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .btn-primary {
            background-color: #00a8ff; /* Bright blue */
            border: none;
            color: #fff;
        }

        .btn-primary:hover {
            background-color: #007bbf; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Welcome to the Rector Page</h1>
            <p>You will be redirected shortly. If not, use the buttons below.</p>
            <asp:Button ID="btnHome" runat="server" Text="Go to Home" CssClass="btn btn-primary" OnClick="HomeRedirect" />
            <asp:Button ID="btnContact" runat="server" Text="Contact Us" CssClass="btn btn-primary" OnClick="ContactRedirect" />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger" OnClick="Logout" />

        </div>
    </form>
</body>
</html>
