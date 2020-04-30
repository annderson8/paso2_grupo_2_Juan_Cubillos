<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.vb" Inherits="paso2_grupo_2_Juan_Cubillos._Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<div class="container tm-home-mt tm-home-container">
		<div class="row">
			<div class="col-12">
				<div class="tm-home-left">
					<h1 class="tm-site-title">Courses UNAD</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
				<div class="tm-home-left mt-3 font-weight-light">
					<p class="tm-mb-35">Welcome student, on this page you will find interactive courses for the development of virtual courses in: ASP.NET, Machine Learning, etc.</p>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
				<ul class="list-group tm-home-list tm-bg-black font-weight-light">
					<li class="d-flex justify-content-between align-items-center">
						<asp:HyperLink ID="HyperLinkRegister" NavigateUrl="~/Register.aspx" class="tm-white-text" runat="server">01. Register</asp:HyperLink>
					</li>
					<li class="d-flex justify-content-between align-items-center">
						<asp:HyperLink ID="HyperLinkSignup" NavigateUrl="~/Signup.aspx" class="tm-white-text" runat="server">02. Sign Up</asp:HyperLink>
					</li>
					<li class="d-flex justify-content-between align-items-center">
						<asp:HyperLink ID="HyperLinkLogin" NavigateUrl="~/Login.aspx" class="tm-white-text" runat="server">03. Login</asp:HyperLink>
					</li>
					<li class="d-flex justify-content-between align-items-center">
						<asp:HyperLink ID="HyperLinkCourse" NavigateUrl="~/Course.aspx" class="tm-white-text" runat="server">04. Course</asp:HyperLink>
					</li>
					<li class="d-flex justify-content-between align-items-center">
						<asp:HyperLink ID="HyperLinkEvaluation" NavigateUrl="~/Evaluation.aspx" class="tm-white-text" runat="server">05. Evaluation</asp:HyperLink>
					</li>
				</ul>
			</div>
		</div>
	</div>
</asp:Content>
