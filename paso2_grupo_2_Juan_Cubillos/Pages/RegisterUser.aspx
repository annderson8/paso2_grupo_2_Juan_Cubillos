<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Templates/SiteOut.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="paso2_grupo_2_Juan_Cubillos.Pages.RegisterUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" class="box">
		<WizardSteps>
			<asp:CreateUserWizardStep runat="server" />
			<asp:CompleteWizardStep runat="server" />
		</WizardSteps>
	</asp:CreateUserWizard>
	<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
</asp:Content>
