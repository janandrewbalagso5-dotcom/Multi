Public Class Program3
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None
    End Sub

    Protected Sub btnana_Click(sender As Object, e As EventArgs) Handles btnana.Click
        Dim Int1 As Integer
        Dim Int2 As Integer

        If String.IsNullOrWhiteSpace(txtone.Text) _
          Or String.IsNullOrWhiteSpace(txttwo.Text) _
        Then

            ClientScript.RegisterStartupScript(Me.GetType(),
        "alert",
        "alert('Please fill in all fields.');",
        True)

            Exit Sub
        End If

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
