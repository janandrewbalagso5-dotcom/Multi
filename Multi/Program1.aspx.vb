Public Class Program1
    Inherits System.Web.UI.Page
    Protected Sub btnCom_Click(sender As Object, e As EventArgs) Handles btnCom.Click
        Dim prelim, midterm, finalGrade, cmg, cmf, genAve As Double

        ' Convert input values
        prelim = Double.Parse(txtpre.Text.Trim())
        midterm = Double.Parse(txtmid.Text.Trim())
        finalGrade = Double.Parse(txtfin.Text.Trim())

        ' Compute grades
        cmg = ((midterm * 2) + prelim) / 3
        cmf = ((cmg * 2) + finalGrade) / 3

        ' General Average
        genAve = (prelim + midterm + finalGrade) / 3
        txtgenave.Text = genAve.ToString("0.00") ' textbox for general average

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