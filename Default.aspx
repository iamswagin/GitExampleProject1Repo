<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GitExampleProject1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="Content/MyStyle.css" rel="stylesheet" />

    <%--<main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Get more libraries</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Web Hosting</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>
    </main>--%>

    <div class="container-fluid container-size container-border">
    <div class="row text-center round-border" style="background-color:darkgreen">
        <h2>Login Form</h2>
    </div><br />
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4 text-center">
            <i class="bi-person-circle required" style="font-size:x-large"></i>
            <%--<input type="text" id="txtEmailAddress" runat="server" placeholder="Enter email or phone" required />--%>
            <asp:TextBox ID="txtEmailAddress" runat="server" placeholder="Enter email or phone" TextMode="Email"></asp:TextBox>
            
        </div>
        <div class="col-sm-3">
            <asp:RequiredFieldValidator ID="rvlEmailAddress" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtEmailAddress" style="color:red;font-family:'Times New Roman'">please enter email address</asp:RequiredFieldValidator>
        </div>
        
     </div>
     <div class="row">
       <div class="col-sm-4"></div>
         <div class="col-sm-4 text-center">
            <i class="bi-lock required"style="font-size:x-large"></i>
             <%--<input type="password" id="txtEmailPassword" runat="server" placeholder="enter password" required />--%>
             <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter password" TextMode="Password"></asp:TextBox>

       </div>
      <div class="col-sm-3">
          <asp:RequiredFieldValidator ID="rvlPassword" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPassword" style="color:red;font-family:'Times New Roman'">please enter password</asp:RequiredFieldValidator>
      </div>
 
     </div>

    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4 text-center">
            <a href="https://localhost:44330/ForgotPassword" style="color:darkgreen">Forgot Passowrd?</a>
        </div>
    </div><br />
    <div class="row">
        
       <div class="col-sm-12 text-center">
           <%--<input class="buttonColor round-border" id="btnLogin" type="submit" formaction="https://localhost:44330/ContactPage" value="Login">--%>
           <asp:Button ID="btnlogin" runat="server" CssClass="buttonColor round-border" Text="Login" />
       </div>
    </div>
    <div class="row">
        <div class="col-sm-12 text-center">
            <p>Not a member ?&nbsp;&nbsp;<a href="https://localhost:44330/SignUpPage2" style="color:darkgreen">Sign up now</a></p>
        </div>
    </div>
    <div calss="row">
        <div class="col-sm-12 text-center">
            <asp:Label ID="lblMessage" runat="server" Visible="false" Text="Incorrect Username or Password" style="color:red;font-family:'Times New Roman', Times, serif"></asp:Label>
        </div>
    </div>
</div>


</asp:Content>
