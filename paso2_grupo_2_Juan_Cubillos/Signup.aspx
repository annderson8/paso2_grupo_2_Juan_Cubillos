<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Signup.aspx.vb" Inherits="paso2_grupo_2_Juan_Cubillos.Signup" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<script>
		function Validate() {
			if (Page_IsValid) {
				return confirm('Are you sure? you want to continue with the sign-up');
			}
			else {
				return false;
			}
		}
	</script>
	<div id="register">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
					<header class="mb-5">
						<h3 class="mt-0 white-text">Sign-up Form</h3>
						<p class="grey-text mb-4">Please complete your registration by adding your username and password to access the system, <b><u>remember that you must have registered before.</u></b></p>
					</header>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
					<div class="input-field">
						<asp:TextBox ID="TextBoxUsername" placeholder="Username" name="TextBoxUsername" class="validate" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxUsername" runat="server" ErrorMessage="Username is Required" Text="*" ForeColor="Red" ValidationGroup="Signup" ControlToValidate="TextBoxUsername" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxPassword" placeholder="Password" name="TextBoxPassword" class="validate" TextMode="Password" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxPassword" runat="server" ErrorMessage="Password is Required" Text="*" ForeColor="Red" ValidationGroup="Signup" ControlToValidate="TextBoxPassword" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxReTypePassword" placeholder="Re-type Password" name="TextBoxReTypePassword" class="validate" TextMode="Password" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxReTypePassword" runat="server" ErrorMessage="Re-type Password is Required" Text="*" ForeColor="Red" ValidationGroup="Signup" ControlToValidate="TextBoxReTypePassword" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
						<asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Password and Re-type Password they must be the same" ForeColor="Red" ControlToValidate="TextBoxPassword" ControlToCompare="TextBoxReTypePassword" Display="Dynamic" SetFocusOnError="true" ValidationGroup="Signup"></asp:CompareValidator>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxEmail" placeholder="Email" name="TextBoxEmail" class="validate" TextMode="Email" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxEmail" runat="server" ErrorMessage="Email is Required" Text="*" ForeColor="Red" ValidationGroup="Signup" ControlToValidate="TextBoxEmail" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxEmail" runat="server" ErrorMessage="Verify email format" Text="Error" ControlToValidate="TextBoxEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ValidationGroup="Signup" SetFocusOnError="true"></asp:RegularExpressionValidator>
					</div>
					<div class="text-right mt-4">
						<asp:Button ID="ButtonSignUp" class="waves-effect btn-large btn-large-white px-4 tm-border-radius-0" runat="server" Text="Sign Up" ValidationGroup="Signup" OnClientClick="if (!Validate()) return false;" />
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
