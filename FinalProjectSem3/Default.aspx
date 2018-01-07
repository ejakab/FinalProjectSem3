<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProjectSem3.Default" %>

<link href="css/main.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
    <meta name=viewport content="width=device-width, initial-scale=1"/>
    <meta lang="en-us" />

    
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/color/jquery.color-2.1.2.min.js"></script>
    <script src="js/main.js"></script>
    <title>Log In</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="login" class="grid">
            <header class="neaslogo">
                <img src="#" alt="Neas Energy Written Logo" />
            </header>
            <div class="r40 subgrid" id="tradingsim">
                <h1>Trading simulator</h1>
            </div>
            <div class="r40 titlehead subgrid">
                <h2>Log in</h2>
            </div>

            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="r30 inputField" ToolTip="Email" PlaceHolder="Email"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="r30 inputField" ToolTip="Password" PlaceHolder="Password"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" Text="LOG IN" CssClass="r40 r-hoverable btnActionLong" OnClick="btnLogin_Click" />
            <asp:Label ID="lblLoginError" runat="server" Text=""></asp:Label>

            <p class="altreg">Dont have an account? <strong><a href="SignUp.aspx">Sign up</a></strong></p>
        </div>
    </form>
</body>
</html>
