Public Class Program3
    Inherits System.Web.UI.Page
    Protected Sub btnana_Click(sender As Object, e As EventArgs) Handles btnana.Click
        Dim Int1 As Integer
        Dim Int2 As Integer

        Int1 = Integer.Parse(txtone.Text.Trim())
        Int2 = Integer.Parse(txttwo.Text.Trim())

        If Int1 > Int2 Then
            lblresult.Text = "Integer 1 is the highest"
        ElseIf Int2 > Int1 Then
            lblresult.Text = "Integer 2 is the highest"
        Else
            lblresult.Text = "Both integers are equal"
        End If
    End Sub
End Class