Public Class Signup
    Inherits System.Web.UI.Page

    Dim MEntities As UNADEntities

    ''' <summary>
    ''' Initial page event
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CleanForm()
        End If
    End Sub

    Protected Sub ButtonSignUp_Click(sender As Object, e As EventArgs) Handles ButtonSignUp.Click
        MEntities = New UNADEntities
        Try
            Dim Person As PERSON = SearchPerson(TextBoxEmail.Text, MEntities)
            If Not Person Is Nothing Then
                If Not ValidateUserName(TextBoxUsername.Text, MEntities) Then
                    If Not EmailAlreadyHasAUser(TextBoxEmail.Text, MEntities) Then
                        Dim User As USER = New USER With {
                       .ID_PERSON = Person.ID_PERSON,
                       .USERNAME = TextBoxUsername.Text.ToUpper,
                       .PASSWORD = TextBoxPassword.Text
                   }
                        MEntities.USER.Add(User)
                        MEntities.SaveChanges()
                        CleanForm()
                        SendMessage("Successfully registered user, under ID: " & User.ID_USER)
                    Else
                        SendMessage("Mail: " & TextBoxEmail.Text & " You are already associated with a user, please validate")
                    End If
                Else
                    Dim userName = TextBoxUsername.Text
                    TextBoxUsername.Text = String.Empty
                    TextBoxUsername.Focus()
                    SendMessage("Username: " & userName & " already registered in the system")
                End If
            Else
                SendMessage("Mail: " & TextBoxEmail.Text & " Not registered please check")
            End If
        Catch ex As Exception
            SendMessage("Attention, an error occurred while trying to register the user, the specific error is: " & ex.Message)
        End Try
    End Sub

    ''' <summary>
    ''' Function that validates if the username is in use
    ''' </summary>
    ''' <param name="userName">User name entered by the user</param>
    ''' <param name="MEntities">DB connection context paramete</param>
    ''' <returns>Returns true in case the username has already been registered</returns>
    Private Function ValidateUserName(userName As String, MEntities As UNADEntities) As Boolean
        ValidateUserName = False
        Dim CountUser = (From u In MEntities.USER Where u.USERNAME = userName Select u).Count()
        If CountUser > 0 Then
            ValidateUserName = True
        End If
    End Function

    ''' <summary>
    ''' Function that validates if the email entered by the user has any associated user
    ''' </summary>
    ''' <param name="email">Email entered by the user</param>
    ''' <param name="MEntities">DB connection context paramete</param>
    ''' <returns>Returns true in case the email entered by the user has an associated user</returns>
    Private Function EmailAlreadyHasAUser(email As String, MEntities As UNADEntities) As Boolean
        EmailAlreadyHasAUser = False
        Dim CountUserByEmail = (From u In MEntities.USER Join p In MEntities.PERSON On u.ID_PERSON Equals p.ID_PERSON Where p.EMAIL = email Select u).Count()
        If CountUserByEmail > 0 Then
            EmailAlreadyHasAUser = True
        End If
    End Function

    ''' <summary>
    ''' Function that searches for the person associated with the email entered by the user
    ''' </summary>
    ''' <param name="email">Email entered by the user</param>
    ''' <param name="MEntities">DB connection context paramete</param>
    ''' <returns>In case the email has a person, the person with all their properties is returned</returns>
    Private Function SearchPerson(email As String, MEntities As UNADEntities) As PERSON
        SearchPerson = Nothing
        Dim Person As PERSON = (From p In MEntities.PERSON Where p.EMAIL = email Select p).FirstOrDefault
        If Not Person Is Nothing Then
            SearchPerson = Person
        End If
    End Function

    ''' <summary>
    ''' Clean form Register
    ''' </summary>
    Private Sub CleanForm()
        TextBoxUsername.Text = String.Empty
        TextBoxPassword.Text = String.Empty
        TextBoxReTypePassword.Text = String.Empty
        TextBoxEmail.Text = String.Empty
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