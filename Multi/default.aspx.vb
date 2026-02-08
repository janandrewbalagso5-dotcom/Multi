Public Class _default
    Inherits System.Web.UI.Page

    Private Property CurrentOperator As String
        Get
            Return If(ViewState("Operator") IsNot Nothing, ViewState("Operator").ToString(), "")
        End Get
        Set(value As String)
            ViewState("Operator") = value
        End Set
    End Property

    Private Property FirstNumber As Double
        Get
            Return If(ViewState("FirstNumber") IsNot Nothing, CDbl(ViewState("FirstNumber")), 0)
        End Get
        Set(value As Double)
            ViewState("FirstNumber") = value
        End Set
    End Property

    Private Property NewEntry As Boolean
        Get
            Return If(ViewState("NewEntry") IsNot Nothing, CBool(ViewState("NewEntry")), True)
        End Get
        Set(value As Boolean)
            ViewState("NewEntry") = value
        End Set
    End Property

    ' Number buttons clicked
    Protected Sub Number_Click(sender As Object, e As EventArgs)
        Dim btn As Button = CType(sender, Button)
        If NewEntry Then
            txtDisplay.Text = btn.Text
            NewEntry = False
        Else
            txtDisplay.Text &= btn.Text
        End If
    End Sub

    ' Operator buttons clicked
    Protected Sub Operator_Click(sender As Object, e As EventArgs)
        Dim btn As Button = CType(sender, Button)
        FirstNumber = Double.Parse(txtDisplay.Text)
        CurrentOperator = btn.Text
        NewEntry = True
    End Sub

    ' Equals button
    Protected Sub btnEquals_Click(sender As Object, e As EventArgs)
        Dim secondNumber As Double = Double.Parse(txtDisplay.Text)
        Dim result As Double = 0

        Select Case CurrentOperator
            Case "+"
                result = FirstNumber + secondNumber
            Case "−"
                result = FirstNumber - secondNumber
            Case "×"
                result = FirstNumber * secondNumber
            Case "÷"
                If secondNumber <> 0 Then
                    result = FirstNumber / secondNumber
                Else
                    txtDisplay.Text = "Cannot divide by 0"
                    Exit Sub
                End If
        End Select

        txtDisplay.Text = result.ToString()
        NewEntry = True
    End Sub

    ' Clear button
    Protected Sub btnClear_Click(sender As Object, e As EventArgs)
        txtDisplay.Text = "0"
        FirstNumber = 0
        CurrentOperator = ""
        NewEntry = True
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            txtDisplay.Text = "0"
            NewEntry = True
        End If
    End Sub

End Class
