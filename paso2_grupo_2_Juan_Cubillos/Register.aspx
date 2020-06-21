<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.vb" Inherits="paso2_grupo_2_Juan_Cubillos.Register" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<script>
		function Validate() {
			if (Page_IsValid) {
				return confirm('Are you sure? you want to continue with the registration');
			}
			else {
				return false;
			}
		}
	</script>
	<div id="register">
		<div class="container">
			<div class="row tm-register-row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-register-col-l">
					<div class="input-field">
						<asp:TextBox ID="TextBoxfirst_name" placeholder="First Name" name="TextBoxfirst_name" class="validate" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxfirst_name" runat="server" ErrorMessage="First name is Required" Text="*" ForeColor="Red" ValidationGroup="Register" ControlToValidate="TextBoxfirst_name" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxlast_name" placeholder="Last Name" name="TextBoxlast_name" class="validate" runat="server"></asp:TextBox>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxEmail" placeholder="Email" name="TextBoxEmail" class="validate" TextMode="Email" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxEmail" runat="server" ErrorMessage="Email name is Required" Text="*" ForeColor="Red" ValidationGroup="Register" ControlToValidate="TextBoxEmail" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxEmail" runat="server" ErrorMessage="Verify email format" Text="Error" ControlToValidate="TextBoxEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ValidationGroup="Register" SetFocusOnError="true"></asp:RegularExpressionValidator>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxMobile" placeholder="Mobile" name="TextBoxMobile" class="validate" TextMode="Number" runat="server"></asp:TextBox>
						<asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxMobile" runat="server" ErrorMessage="Verify mobile format" Text="Error" ControlToValidate="TextBoxMobile" ForeColor="Red" ValidationExpression="[0-9]{10}" Display="Dynamic" ValidationGroup="Register" SetFocusOnError="true"></asp:RegularExpressionValidator>
					</div>
					<div class="input-field">
						<asp:TextBox ID="TextBoxAddress" placeholder="Address" name="TextBoxAddress" class="validate" runat="server"></asp:TextBox>
					</div>
					<div class="text-right mt-4">
						<asp:Button ID="ButtonRegister" class="waves-effect btn-large btn-large-white px-4 black-text" runat="server" Text="Register" ValidationGroup="Register" OnClientClick="if (!Validate()) return false;" />
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 tm-register-col-r">
					<header class="mb-5">
						<h3 class="mt-0 text-white">Welcome to registration</h3>
						<p class="grey-text">
							On this page you can register with your basic data in the system.
						</p>
					</header>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
