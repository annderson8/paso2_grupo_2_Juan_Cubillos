Public Class SiteInternal
    Inherits System.Web.UI.MasterPage

    ''' <summary>
    ''' Initial page event
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.User.Identity.IsAuthenticated Then
            Response.Redirect(FormsAuthentication.LoginUrl, True)
        End If
    End Sub

    ''' <summary>
    ''' Site-wide logout event
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub LoginStatus_LoggingOut(sender As Object, e As LoginCancelEventArgs) Handles LoginStatus.LoggingOut
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1))
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetNoStore()
        FormsAuthentication.SignOut()
        Session.Abandon()
        Response.Redirect(FormsAuthentication.LoginUrl, True)
    End Sub

End Class