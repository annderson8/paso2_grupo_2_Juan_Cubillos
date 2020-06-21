
Public Class Register
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

    ''' <summary>
    ''' Button register Event
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub ButtonRegister_Click(sender As Object, e As EventArgs) Handles ButtonRegister.Click
        MEntities = New UNADEntities
        Dim Person As PERSON
        Person = New PERSON
        Try
            If Not ValidateEmail(TextBoxEmail.Text, MEntities) Then
                Person.FIRST_NAME = TextBoxfirst_name.Text.ToUpper
                Person.LAST_NAME = TextBoxlast_name.Text.ToUpper
                Person.EMAIL = TextBoxEmail.Text.ToUpper
                Person.MOBILE = TextBoxMobile.Text.ToUpper
                Person.ADDRESS = TextBoxAddress.Text.ToUpper
                MEntities.PERSON.Add(Person)
                MEntities.SaveChanges()
                CleanForm()
                SendMessage("Successfully registered person, under ID: " & Person.ID_PERSON)
            Else
                Dim email = TextBoxEmail.Text
                TextBoxEmail.Text = String.Empty
                TextBoxEmail.Focus()
                SendMessage("Mail: " & email & " already registered in the system")
            End If
        Catch ex As Exception
            SendMessage("Attention, an error occurred while trying to register the person, the specific error is: " & ex.Message)
        End Try
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

    ''' <summary>
    ''' Function that validates the email entered by the user 
    ''' </summary>
    ''' <param name="email">Email entered by the user</param>
    ''' <param name="MEntities">DB connection context parameter</param>
    ''' <returns>In case the email is registered it returns true</returns>
    Private Function ValidateEmail(email As String, MEntities As UNADEntities) As Boolean
        ValidateEmail = False
        Dim CountEmail = (From p In MEntities.PERSON Where p.EMAIL = email Select p).Count()
        If CountEmail > 0 Then
            ValidateEmail = True
        End If
    End Function

    ''' <summary>
    ''' Clean form Register
    ''' </summary>
    Private Sub CleanForm()
        TextBoxfirst_name.Text = String.Empty
        TextBoxlast_name.Text = String.Empty
        TextBoxEmail.Text = String.Empty
        TextBoxMobile.Text = String.Empty
        TextBoxAddress.Text = String.Empty
    End Sub

End Class