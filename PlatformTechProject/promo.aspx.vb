Imports MySql.Data.MySqlClient
Imports MySql.Data

Public Class promo
    Inherits System.Web.UI.Page


    Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Dim connectionString As String

    Public strErrors As String



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        connectionString = "server=localhost; userid=root; password=; database=db_tinstarresort;"
        connection = New MySqlConnection(connectionString)
        connection.Open()


    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Dim strReservation As String = ""
        Dim strCommand As String = "INSERT INTO tbl_reservation(ContactName, ContactAddress, ContactNumber, ContactEmail, ReservationName) VALUES (@Name , @Address, @Number, @Email, @Reservation)"


        If (cbChoices1.Checked) Then
            strReservation += "The Luxury\n"
        End If

        If (cbChoices2.Checked) Then
            strReservation += "The Best\n"
        End If

        If (cbChoices3.Checked) Then
            strReservation += "The Great"
        End If

        Try
            

            command = New MySqlCommand(strCommand, connection)
            command.CommandType = CommandType.Text
            command.Parameters.AddWithValue("@Name", txtName.Text)
            command.Parameters.AddWithValue("@Address", txtAddress.Text)
            command.Parameters.AddWithValue("@Number", txtCnum.Text)
            command.Parameters.AddWithValue("@Email", txtEmail.Text)
            command.Parameters.AddWithValue("@Reservation", strReservation)

            command.ExecuteNonQuery()

            connection.Close()

            Response.Write("<script> alert('Successful Reservation') </script>")


        Catch ex As Exception
            Response.Write(ex.Message)
        End Try

    End Sub
End Class