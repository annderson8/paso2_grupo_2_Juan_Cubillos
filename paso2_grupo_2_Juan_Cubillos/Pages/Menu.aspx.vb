Public Class Menu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.User.Identity.IsAuthenticated Then
            Response.Redirect(FormsAuthentication.LoginUrl)
        End If
    End Sub

End Class