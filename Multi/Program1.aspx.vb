Public Class Program1
    Inherits System.Web.UI.Page
    Protected Sub btnCom_Click(sender As Object, e As EventArgs) Handles btnCom.Click
        Dim prelim, midterm, finalGrade, cmg, cmf, genAve As Double

        'Empty boxes
        If String.IsNullOrWhiteSpace(txtpre.Text) _
          Or String.IsNullOrWhiteSpace(txtmid.Text) _
          Or String.IsNullOrWhiteSpace(txtfin.Text) Then

            ClientScript.RegisterStartupScript(Me.GetType(),
        "alert",
        "alert('Please fill in all grade fields.');",
        True)

            Exit Sub
        End If

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

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None
    End Sub
End Class
