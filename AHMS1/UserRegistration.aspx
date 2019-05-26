<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="AHMS1.UserRegistration" %>

<!DOCTYPE html>

<html lang="en-us" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
   <%-- <form id="form1" runat="server">
    <div>
    
    </div>
    </form>--%>
    
<div class="padding-15">

	<div class="login-box">

		
		<div runat="server" id="alrtFail" class="alert alert-danger" visible="false"><asp:Label ID="lblAlrtFail" runat="server"></asp:Label></div><!-- Failure -->
		
        <div class="alert alert-success alert-mini" runat="server" id="alrtSuccess" visible="false"><!-- SUCCESS -->
                                <button type="button" class="close" data-dismiss="alert">
                                    <span aria-hidden="true">×</span>
                                    <span class="sr-only">Close</span>

                                </button>
                                <strong class="fa fa-check-circle">Success!</strong> Account created. Contact admin to authorize account. <b><a style="color:darkgreen" href="UserLogin.aspx">login here!</a></b>

                            </div>
		<!-- registration form -->
		<form id="form1" runat="server" class="sky-form boxed" novalidate="novalidate">
			<header><i class="fa fa-users"></i>  HMS <small class="note bold">USER</small></header>
					
			<fieldset>					
				<label class="input">
					<i class="icon-append fa fa-user"></i>
					<asp:TextBox runat="server" ID="txtUname" type="text" placeholder="UserName" />
					<b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
				</label>

                <label class="input">
					<i class="icon-append fa fa-envelope"></i>
					<asp:TextBox runat="server" ID="txtEmail" type="text" placeholder="Email address" />
					<b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
				</label>
					
				<label class="input">
					<i class="icon-append fa fa-lock"></i>
					<asp:TextBox runat="server" type="password" ID="txtPword" placeholder="Password"></asp:TextBox>
					<b class="tooltip tooltip-bottom-right">Only latin characters and numbers</b>
				</label>
					
				<label class="input">
					<i class="icon-append fa fa-lock"></i>
					<asp:TextBox runat="server" ID="txtConPword" type="password" placeholder="Confirm password"></asp:TextBox>
					<b class="tooltip tooltip-bottom-right">Only latin characters and numbers</b>
				</label>
			</fieldset>
						
			<fieldset>
				<div class="row">
					<div class="col-md-6">
						<label class="input">
							<asp:TextBox runat="server" ID="txtFname" type="text" placeholder="First name"></asp:TextBox>
						</label>
					</div>
					<div class="col col-md-6">
						<label class="input">
							<asp:TextBox type="text" ID="txtLname" runat="server" placeholder="Last name"></asp:TextBox>
						</label>
					</div>
				</div>

				<label class="select">
					<%--<select>
						<option value="0" selected disabled>Gender</option>
						<option value="1">Male</option>
						<option value="2">Female</option>
						<option value="3">Other</option>
					</select>--%>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Selected disabled>Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
					<i></i>
				</label>
						
				
			</fieldset>

			<footer>
				<asp:LinkButton runat="server" CssClass="btn btn-primary pull-right" ID="btnCreate" OnClick="btnCreate_Click"><i class="fa fa-check"></i> Create Account</asp:LinkButton>
			</footer>

		</form>
		<!-- /registration form -->
        </div>
    </div>

    <!-- JAVASCRIPT FILES -->
		<script type="text/javascript">var plugin_path = 'assets/plugins/';</script>
		<script type="text/javascript" src="assets/plugins/jquery/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="assets/js/app.js"></script>
</body>
</html>
