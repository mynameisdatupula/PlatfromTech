Imports MySql.Data.MySqlClient
Imports MySql.Data


Public Class admin
    Inherits System.Web.UI.Page

    Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Dim strConnection As String
    Dim strCommand As String
    Public strErrors As String = ""
    Public strSuccess As String = ""



    Public strEditingResult As String = ""
    Public strDeleteResult As String = ""
    Public strAddResult As String = ""

    Private tblReservation As DataTable



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("username") IsNot Nothing Then

            Session("login") = True

            strConnection = "server=localhost; userid=root; password=; database=db_tinstarresort;"
            connection = New MySqlConnection(strConnection)

            Try
                connection.Open()
                strCommand = "SELECT * FROM tbl_promotions"
                command = New MySqlCommand(strCommand, connection)

                Dim dataAdapter As MySqlDataAdapter = New MySqlDataAdapter(command)
                Dim dataTable As DataTable = New DataTable

                dataAdapter.Fill(dataTable)

                GridViewPromos.DataSource = dataTable
                GridViewPromos.DataBind()


                connection.Close()
            Catch ex As Exception
                Response.Write(ex.Message)
            End Try

            Try
                connection.Open()
                strCommand = "SELECT * FROM tbl_reservation"
                command = New MySqlCommand(strCommand, connection)

                Dim dataAdapter As MySqlDataAdapter = New MySqlDataAdapter(command)
                tblReservation = New DataTable

                dataAdapter.Fill(tblReservation)

              


                connection.Close()

            Catch ex As Exception
                Response.Write(ex.Message)
            End Try
            
        Else : Response.Redirect("index.aspx")
        End If


    End Sub

    Public Sub PrintReservation()


        For Each row As DataRow In tblReservation.Rows
            Response.Write("<tr>")
            For ctr As Integer = 0 To 6

                Response.Write("<td >" & row.Item(ctr) & "</td>")

            Next


            Response.Write("<td>" + "<a href=""Reservation.aspx?id=" & row.Item("id") & """>Delete</a></td>")
            Response.Write("</tr>")

        Next
    End Sub


    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)

        strConnection = "server=localhost; userid=root; password=; database=db_tinstarresort;"
        connection = New MySqlConnection(strConnection)

        Try
            connection.Open()
            strCommand = "INSERT INTO tbl_admins(username,password) VALUES(@name, @pass)"
            command = New MySqlCommand(strCommand, connection)
            command.CommandType = CommandType.Text
            command.Parameters.AddWithValue("@name", txtUsername.Text)
            command.Parameters.AddWithValue("@pass", txtPassword.Text)
            command.ExecuteNonQuery()
            strSuccess = "Adding new admin successful"


            connection.Close()

        Catch ex As Exception

            strErrors = ex.Message

        End Try
    End Sub

    Protected Sub btnLogout_Click(sender As Object, e As EventArgs) Handles btnLogout.Click
        Session.Abandon()
        Response.Redirect("index.aspx")
    End Sub

    Protected Sub btnEditPromo_Click(sender As Object, e As EventArgs)
        strConnection = "server=localhost; userid=root; password=; database=db_tinstarresort;"
        connection = New MySqlConnection(strConnection)

        Try
            connection.Open()
            strCommand = "UPDATE tbl_promotions SET name=@newname,description=@newdescription,price=@newprice WHERE id=@id"
            command = New MySqlCommand(strCommand, connection)
            command.CommandType = CommandType.Text
            command.Parameters.AddWithValue("@newname", txtNewName.Text)
            command.Parameters.AddWithValue("@newdescription", txtNewDescription.Text)
            command.Parameters.AddWithValue("@newprice", txtNewPrice.Text)
            command.Parameters.AddWithValue("@id", txtID.Text)

            command.ExecuteNonQuery()

            txtID.Text = String.Empty
            txtNewName.Text = String.Empty
            txtNewDescription.Text = String.Empty
            txtNewPrice.Text = String.Empty


            strEditingResult = "Successful editing"
            connection.Close()


        Catch ex As Exception
            strEditingResult = ex.Message
        End Try

    End Sub

    Protected Sub rbtnEditDelete_CheckedChanged(sender As Object, e As EventArgs)

        If rbtnEdit.Checked Then

            txtID.Enabled = True
            txtNewName.Enabled = True
            txtNewDescription.Enabled = True
            txtNewPrice.Enabled = True
            btnEditPromo.Enabled = True

            txtIDdelete.Enabled = False
            btnDelete.Enabled = False

            txtAddDescription.Enabled = False
            txtAddName.Enabled = False
            txtAddPrice.Enabled = False
            btnAddPromo.Enabled = False


        ElseIf rbtnDelete.Checked Then

            txtIDdelete.Enabled = True
            btnDelete.Enabled = True

            txtID.Enabled = False
            txtNewName.Enabled = False
            txtNewDescription.Enabled = False
            txtNewPrice.Enabled = False
            btnEditPromo.Enabled = False

            txtAddDescription.Enabled = False
            txtAddName.Enabled = False
            txtAddPrice.Enabled = False
            btnAddPromo.Enabled = False

        ElseIf rbtnAdd.Checked Then

            txtAddDescription.Enabled = True
            txtAddName.Enabled = True
            txtAddPrice.Enabled = True
            btnAddPromo.Enabled = True

            txtID.Enabled = False
            txtNewName.Enabled = False
            txtNewDescription.Enabled = False
            txtNewPrice.Enabled = False
            btnEditPromo.Enabled = False

            txtIDdelete.Enabled = False
            btnDelete.Enabled = False

        End If
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        strConnection = "server=localhost; userid=root; password=; database=db_tinstarresort;"
        connection = New MySqlConnection(strConnection)

        Try
            connection.Open()
            strCommand = "DELETE FROM tbl_promotions WHERE id=@id"
            command = New MySqlCommand(strCommand, connection)
            command.CommandType = CommandType.Text
            command.Parameters.AddWithValue("@id", txtIDdelete.Text)

            command.ExecuteNonQuery()
            connection.Close()
            strDeleteResult = "Delete Successful"

            txtIDdelete.Text = String.Empty

        Catch ex As Exception
            strDeleteResult = ex.Message

        End Try

    End Sub

    Protected Sub Unnamed_Click(sender As Object, e As EventArgs)
        strConnection = "server=localhost; userid=root; password=; database=db_tinstarresort;"
        connection = New MySqlConnection(strConnection)
        strCommand = "INSERT INTO tbl_promotions(name,description,price) VALUES(@name,@description,@price)"

        Try
            connection.Open()
            command = New MySqlCommand(strCommand, connection)
            command.CommandType = CommandType.Text
            command.Parameters.AddWithValue("@name", txtAddName.Text)
            command.Parameters.AddWithValue("@description", txtAddDescription.Text)
            command.Parameters.AddWithValue("@price", txtAddPrice.Text)
            command.ExecuteNonQuery()

            strAddResult = "Successful adding of promo"
            connection.Close()
        Catch ex As Exception
            strAddResult = ex.Message

        End Try
       

    End Sub
End Class