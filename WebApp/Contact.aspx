<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/WebApp.master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" 
    Inherits="WebApp.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact Us</h1>
    <p>We would love to hear from you! Please feel free to reach out to us using the information below:</p>
    <h2>Phone</h2>
    <p>Call us at: <strong>(123) 456-7890</strong></p>
    <h2>Email</h2>
    <p>Email us at: <strong><a href="mailto:support@webapp.com">support@webapp.com</a></strong></p>
    <h2>Address</h2>
    <p>Visit us at: <br />
       1234 WebApp St., <br />
       Tech City, TX 78901
    </p>
    <h2>Follow Us</h2>
    <p>Connect with us on social media:</p>
    <ul>
        <li><a href="#">Facebook</a></li>
        <li><a href="#">Twitter</a></li>
        <li><a href="#">LinkedIn</a></li>
    </ul>
</asp:Content>