Public Class Program4
    Inherits System.Web.UI.Page
    Protected Sub btnCom_Click(sender As Object, e As EventArgs) Handles btnCom.Click
        Dim prelim, midterm, finalGrade, cmg, cmf As Double
        Dim equiv As String

        ' Convert input values
        prelim = Double.Parse(txtPre.Text.Trim())
        midterm = Double.Parse(txtmid.Text.Trim())
        finalGrade = Double.Parse(txtfi.Text.Trim())

        ' Compute grades
        cmg = ((midterm * 2) + prelim) / 3
        cmf = ((cmg * 2) + finalGrade) / 3

        ' Display cumulative midterm
        txtcmg.Text = cmg.ToString("0.00")
        txtcmf.Text = cmf.ToString("0.00")

        If cmf >= 96 Then
            equiv = "1.00"
        ElseIf cmf >= 93 Then
            equiv = "1.25"
        ElseIf cmf >= 90 Then
            equiv = "1.50"
        ElseIf cmf >= 87 Then
            equiv = "1.75"
        ElseIf cmf >= 84 Then
            equiv = "2.00"
        ElseIf cmf >= 81 Then
            equiv = "2.25"
        ElseIf cmf >= 78 Then
            equiv = "2.50"
        ElseIf cmf >= 75 Then
            equiv = "2.75"
        Else
            equiv = "5.00"
        End If

        txteq.Text = equiv

        ' Remarks
        If cmf >= 75 Then
            txtrem.Text = "PASSED"
            txtrem.ForeColor = Drawing.Color.Green
        Else
            txtrem.Text = "FAILED"
            txtrem.ForeColor = Drawing.Color.Red
        End If
    End Sub

End Class