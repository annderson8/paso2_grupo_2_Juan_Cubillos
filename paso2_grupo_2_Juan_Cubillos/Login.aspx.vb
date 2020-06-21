Public Class login
    Inherits System.Web.UI.Page

    Dim MEntities As UNADEntities

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CleanForm()
        End If
    End Sub

    Protected Sub ButtonLogin_Click(sender As Object, e As EventArgs) Handles ButtonLogin.Click
        MEntities = New UNADEntities
        If ValidateUser(TextBoxUsername.Text, TextBoxPassword.Text, MEntities) Then
            FormsAuthentication.RedirectFromLoginPage(TextBoxUsername.Text, False)
        Else
            SendMessage("Incorrect username or password")
        End If
    End Sub

    Private Function ValidateUser(userName As String, password As String, MEntities As UNADEntities) As Boolean
        ValidateUser = False
        Dim CountUser = (From u In MEntities.USER Where u.USERNAME = userName And u.PASSWORD = password Select u).Count()
        If CountUser > 0 Then
            ValidateUser = True
        End If
    End Function

    ''' <summary>
    ''' Clean form Register
    ''' </summary>
    Private Sub CleanForm()
        TextBoxUsername.Text = String.Empty
        TextBoxPassword.Text = String.Empty
    End Sub

    ''' <summary>
    ''' Method that allows Javascript to be sent to the browser
    ''' </summary>
    ''' <param name="Message">Message to send, cannot contain special characters</param>
    Private Sub SendMessage(Message As String)
        Dim sb As New StringBuilder()
        sb.Append("<script type = 'text/javascript'>")
        sb.Append("window.onload=function(){")
        sb.Append("alert('")
        sb.Append(Message)
        sb.Append("')};")
        sb.Append("</script>")
        ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", sb.ToString())
    End Sub

End Class