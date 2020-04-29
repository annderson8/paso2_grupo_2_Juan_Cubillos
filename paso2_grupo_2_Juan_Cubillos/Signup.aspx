<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Signup.aspx.vb" Inherits="paso2_grupo_2_Juan_Cubillos.Signup" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<div id="register">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
					<header class="mb-5">
						<h3 class="mt-0 white-text">Sign-up Form</h3>
						<p class="grey-text mb-4">Please complete your registration by adding your username and password to access the system, remember that you must have registered before.</p>
					</header>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
					<div class="input-field">
						<asp:TextBox ID="TextBoxUsername" placeholder="Username" name="TextBoxUsername" class="validate" runat="server"></asp:TextBox>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxPassword" placeholder="Password" name="TextBoxPassword" class="validate" TextMode="Password" runat="server"></asp:TextBox>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxReTypePassword" placeholder="Re-type Password" name="TextBoxReTypePassword" class="validate" TextMode="Password" runat="server"></asp:TextBox>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxEmail" placeholder="Email" name="TextBoxEmail" class="validate" TextMode="Email" runat="server"></asp:TextBox>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxMobile" placeholder="Mobile" name="TextBoxMobile" class="validate" TextMode="Number" runat="server"></asp:TextBox>
					</div>
					<div class="text-right mt-4">
						<asp:Button ID="ButtonSignUp" class="waves-effect btn-large btn-large-white px-4 tm-border-radius-0" runat="server" Text="Sign Up" />
					</div>
				</div>
			</div>
		</div>
</asp:Content>
