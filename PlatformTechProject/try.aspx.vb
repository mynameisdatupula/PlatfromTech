Imports System.Net.Mail
Imports System.Net
Imports System.Data.Sql


Public Class _try

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        Response.Write("<script> alert('Connected');</script>")
    End Sub

    

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnCompute_Click(sender As Object, e As EventArgs) Handles btnCompute.Click

        Dim floatCurrentIncome As Double
        Dim floatPrevSavings As Double
        Dim floatCurrentExpense As Double

        floatCurrentIncome = Double.Parse(txtCurrentIncome.Text)
        floatPrevSavings = Double.Parse(txtSavings.Text)
        floatCurrentExpense = Double.Parse(txtExpenses.Text)



        lblAnswer.Text = ((floatCurrentIncome - floatCurrentExpense) + floatPrevSavings) * 12

    End Sub
End Class