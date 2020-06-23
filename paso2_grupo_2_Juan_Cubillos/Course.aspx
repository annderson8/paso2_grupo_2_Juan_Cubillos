<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Course.aspx.vb" Inherits="paso2_grupo_2_Juan_Cubillos.Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<div id="survey" class="font-weight-light">
		<div class="container tm-container-max-800">
			<div class="row">
				<div class="col-12">
					<header class="mt-5 mb-5 text-center">
						<h1 class="font-weight-light tm-form-title">Example page teaching resources</h1>
						<p class="tm-form-description">
							On this page you will find teaching resources to learn about the selected topic.
						</p>
					</header>
					<div class="tm-bg-black tm-form-block">
						<p class="mb-4">
							Written resource
						</p>
						<iframe src="https://sgeneral.unad.edu.co/images/documentos/externos/decretos/1997/SGRAL_LEY396_05081997.pdf" style="width: 600px; height: 500px;" frameborder="0"></iframe>
					</div>
					<div class="tm-bg-black tm-form-block">
						<p class="mb-4">
							Visual resource
						</p>
						<iframe width="600px" height="500px" src="https://www.youtube.com/embed/Z69z2ODm9ts" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</div>
					<div class="tm-bg-black tm-form-block">
						<p class="mb-4">
							Audio resource
						</p>
						<iframe width="600px" height="500px" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/365283227&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
