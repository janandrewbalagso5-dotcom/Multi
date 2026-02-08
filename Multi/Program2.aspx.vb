Public Class Program2
    Inherits System.Web.UI.Page

    Protected Sub btnCom_Click(sender As Object, e As EventArgs) Handles btnCom.Click
        Dim intone As Double
        Dim inttwo As Double

        If Not Double.TryParse(txtone.Text.Trim(), intone) OrElse
           Not Double.TryParse(txttwo.Text.Trim(), inttwo) Then

            txtsum.Text = "Invalid input"
            txtDiff.Text = "Invalid input"
            txtQuo.Text = "Invalid input"
            txtPro.Text = "Invalid input"
            Exit Sub
        End If

        txtsum.Text = (intone + inttwo).ToString()
        txtDiff.Text = (intone - inttwo).ToString()
        txtPro.Text = (intone * inttwo).ToString()

        If inttwo = 0 Then
            txtQuo.Text = "Cannot divide by zero"
        Else
            txtQuo.Text = (intone / inttwo).ToString()
        End If
    End Sub
End Class