<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="FinalProjectSem3.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta lang="en-us" />

    <link href="css/main.css" rel="stylesheet" />
    <link href="css/normalize.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/color/jquery.color-2.1.2.min.js"></script>
    <script src="js/main.js"></script>
    <title>Sign Up</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="signup" class="grid">
            <header class="neaslogo">
                <img src="" alt="Neas Energy Written Logo" />
            </header>
            <div class="r40 subgrid" id="tradingsimIntro">
                <h1>Trading simulator</h1>
                <p>Learn how to trade and prove your skills on a virtual energy market.</p>
            </div>
            <div class="r40 titlehead subgrid">
                <h2>Sign Up</h2>
            </div>
            <%--server contoles--%> 
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="r30 inputField" PlaceHolder="Email"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="r30 inputField" PlaceHolder="Password"></asp:TextBox>
            <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" CssClass="r30 inputField" Placeholder="Re-enter password"></asp:TextBox>
            <asp:Button ID="btnSignUp" runat="server" Text="SIGN UP" CssClass="r40 r-hoverable btnActionLong" OnClick="btnSignUp_Click"/>
            <asp:Label ID="lblErrorSignUp" runat="server" Text=""></asp:Label>
            <%--  --%>
            <p class="altreg">Already have an account?<a href="Default.aspx">Log in</a></p>

        </div>
    </form>
</body>
</html>
