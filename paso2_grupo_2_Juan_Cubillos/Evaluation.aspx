<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Evaluation.aspx.vb" Inherits="paso2_grupo_2_Juan_Cubillos.Evaluation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<div id="survey" class="font-weight-light">
		<div class="container tm-container-max-800">
			<div class="row">
				<div class="col-12">
					<header class="mt-5 mb-5 text-center">
						<h1 class="font-weight-light tm-form-title">Evaluation example</h1>
						<p class="tm-form-description">
							This page shows how an assessment was viewed on selected content.
						</p>
					</header>
					<div class="tm-bg-black tm-form-block">
						<p class="mb-4">
							1. The UNAD is
						</p>
						<ul class="ml-3">
							<li>
								<label>
									<asp:RadioButton ID="RadioButtonQuestionOneA" GroupName="QuestionOne" runat="server" />
									<span>College</span>
								</label>
							</li>
							<li>
								<label>
									<asp:RadioButton ID="RadioButtonQuestionOneB" GroupName="QuestionOne" runat="server" />
									<span>School</span>
								</label>
							</li>
							<li>
								<label>
									<asp:RadioButton ID="RadioButtonQuestionOneC" GroupName="QuestionOne" runat="server" />
									<span>Company</span>
								</label>
							</li>
							<li>
								<label>
									<asp:RadioButton ID="RadioButtonQuestionOneD" GroupName="QuestionOne" runat="server" />
									<span>Other</span>
								</label>
							</li>
						</ul>
					</div>
					<div class="text-center mt-5">
						<asp:Button ID="ButtonSend" class="waves-effect btn-large" runat="server" Text="Finish" />
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
