Public Class Evaluacion
    Inherits System.Web.UI.Page
    Private Property Calificacion As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Calificacion = 0
        If RadioButton3.Checked = True Then Calificacion = Calificacion + 10
        If RadioButton5.Checked = True Then Calificacion = Calificacion + 10
        If RadioButton12.Checked = True Then Calificacion = Calificacion + 10
        If RadioButton13.Checked = True Then Calificacion = Calificacion + 10
        If RadioButton18.Checked = True Then Calificacion = Calificacion + 10
        If RadioButton24.Checked = True Then Calificacion = Calificacion + 10
        If RadioButton25.Checked = True Then Calificacion = Calificacion + 10
        If RadioButton30.Checked = True Then Calificacion = Calificacion + 10
        MsgBox("Su Calificación Es: " + Str(Calificacion) + "De 80")
        If Calificacion <= 30 Then
            MsgBox("Calificación Baja")
        End If
        If Calificacion = 40 Then
            MsgBox("Calificación Media")
        End If
        If Calificacion >= 60 Then
            MsgBox("Calificación Alta")
        End If
    End Sub
End Class