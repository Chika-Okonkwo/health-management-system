<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="AHMS1.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <%--  <title></title>--%>
    <meta charset="utf-8" />
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title>Smarty Admin</title>
		<meta name="description" content="" />
		<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

		<!-- mobile settings -->
		<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />

		<!-- WEB FONTS -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800&amp;subset=latin,latin-ext,cyrillic,cyrillic-ext" rel="stylesheet" type="text/css" />

		<!-- CORE CSS -->
		<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		
		<!-- THEME CSS -->
		<link href="assets/css/essentials.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/layout.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/color_scheme/green.css" rel="stylesheet" type="text/css" id="color_scheme" />
</head>
<body>
   
    <div>
        <div class="padding-15">

			<div class="login-box">
            
				<!-- login form -->
				<form runat="server" id="form1" class="sky-form boxed">
                    <div runat="server" id="alrtFailure" class="alert alert-mini alert-danger" visible="false"><!-- DANGER -->
                        <strong>Oops!</strong> <asp:Label runat="server" ID="lblAlrtFail"></asp:Label>
                    </div>
					<header><i class="fa fa-users"></i> Sign In</header>

					<!--
					<div class="alert alert-danger noborder text-center weight-400 nomargin noradius">
						Invalid Email or Password!
					</div>

					<div class="alert alert-warning noborder text-center weight-400 nomargin noradius">
						Account Inactive!
					</div>

					<div class="alert alert-default noborder text-center weight-400 nomargin noradius">
						<strong>Too many failures!</strong> <br />
						Please wait: <span class="inlineCountdown" data-seconds="180"></span>
					</div>
					-->

					<fieldset>	
					
						<section>
							<label class="label">Username</label>
							<label class="input">
								<i class="icon-append fa fa-user"></i>
								<asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>
								<span class="tooltip tooltip-top-right">Enter Username</span>
							</label>
						</section>
						
						<section>
							<label class="label">Password</label>
							<label class="input">
								<i class="icon-append fa fa-lock"></i>
								<asp:TextBox ID="txtPWord" runat="server" TextMode="Password"></asp:TextBox>
								<b class="tooltip tooltip-top-right">Enter Password</b>
							</label>
							<%--<label class="checkbox"><input type="checkbox" name="checkbox-inline" checked><i></i>Keep me logged in</label>--%>
                            <label class="checkbox"><asp:CheckBox runat="server"  Checked /><i></i>Keep me logged in</label>
						</section>

					</fieldset>

					<footer>
						<asp:Button runat="server" ID="btnLogin" OnClick="btnLogin_Click" Text="Sign In" class="btn btn-primary pull-right"></asp:Button>
						<div class="forgot-password pull-left">
							<a href="#">Forgot password?</a> <br />
						
						</div>
					</footer>
				</form>
				<!-- /login form -->

    
    </div>
    
            </div>
        </div>

    <!-- JAVASCRIPT FILES -->
		<script type="text/javascript">var plugin_path = 'assets/plugins/';</script>
		<script type="text/javascript" src="assets/plugins/jquery/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="assets/js/app.js"></script>
</body>
</html>
