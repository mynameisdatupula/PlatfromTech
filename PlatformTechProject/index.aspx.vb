Imports System.Web.SessionState.HttpSessionState
Imports System.Web
Imports System.Data
Imports MySql.Data
Imports MySql.Data.MySqlClient
Imports System.Security.Cryptography
Imports System.Text


Public Class index
    Inherits System.Web.UI.Page

    Dim connection As MySqlConnection
    Dim connectionString As String
    Dim command As MySqlCommand
    Public strErrors As String = ""


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        connectionString = "server=localhost; userid=root; password=; database=db_tinstarresort;"
        connection = New MySqlConnection(connectionString)

        If Session("username") IsNot Nothing And Session("password") IsNot Nothing Then
            Response.Write("<script> alert('Currently logged-in, link invalid')</script>")
            Response.Redirect("admin.aspx")
        End If


    End Sub



    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Dim hashedPassword As MD5
        hashedPassword = MD5.Create()
        Dim data As Byte() = hashedPassword.ComputeHash(Encoding.UTF8.GetBytes(txtpassword.Text))
        Dim strBuilder As StringBuilder = New StringBuilder()

        Dim i As Integer
        For i = 0 To data.Length - 1
            strBuilder.Append(data(i).ToString("x2"))
        Next i

        Dim encrypted As String = strBuilder.ToString



        Try
            connection.Open()
            Dim strCommand As String = "SELECT username, password FROM tbl_admins WHERE username = @name AND password = @password"

            command = New MySqlCommand(strCommand, connection)
            command.CommandType = CommandType.Text
            command.Parameters.AddWithValue("@name", txtname.Text)
            command.Parameters.AddWithValue("@password", txtpassword.Text)

            Dim reader As MySqlDataReader = command.ExecuteReader

            If reader IsNot Nothing Then
                If reader.Read() Then
                    Session("username") = txtname.Text
                    Session("password") = txtpassword.Text

                    txtname.Text = String.Empty
                    txtpassword.Text = String.Empty

                    reader.Close()
                    connection.Close()

                    Response.Redirect("admin.aspx")
                Else : Session("indexErrors") = "Account not found"
                End If

                


            Else
                Session("indexErrors") = "Account not found"
                Response.Redirect("index.aspx#LOG-IN")

            End If

            reader.Close()
            connection.Close()


        Catch ex As Exception
            Session("indexErrors") = ex.Message


        End Try
    End Sub

    Protected Sub btnSubmit_Command(sender As Object, e As CommandEventArgs) Handles btnSubmit.Command

    End Sub
End Class