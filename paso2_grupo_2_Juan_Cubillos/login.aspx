<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="paso2_grupo_2_Juan_Cubillos.login" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<div id="login">
		<div class="container">
			<div class="row tm-register-row tm-mb-35">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-login-l">
					<div class="input-field">
						<asp:TextBox ID="TextBoxUsername" placeholder="Username" name="TextBoxUsername" class="validate" runat="server"></asp:TextBox>
					</div>
					<div class="input-field mb-5">
						<asp:TextBox ID="TextBoxPassword" placeholder="Password" name="TextBoxPassword" class="validate" TextMode="Password" runat="server"></asp:TextBox>
					</div>
					<!--
					<div class="tm-flex-lr">
						<a href="#" class="white-text small">Forgot Password?</a>
						<button type="submit" class="waves-effect btn-large btn-large-white px-4 black-text rounded-0">Login</button>
					</div>-->
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-login-r">
					<header class="font-weight-light tm-bg-black p-5 h-100">
						<h3 class="mt-0 text-white font-weight-light">Login</h3>
						<p>Please enter your username and password to log in.</p>
					</header>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ml-auto mr-0 text-center">
					<asp:HyperLink ID="HyperLinkRegister" NavigateUrl="~/Register.aspx" class="waves-effect btn-large btn-large-white px-4 black-text rounded-0" runat="server">Create New Account</asp:HyperLink>
				</div>
			</div>
		</div>
</asp:Content>
