Imports MySql.Data.MySqlClient
Imports MySql.Data

Public Class promo
    Inherits System.Web.UI.Page


    Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Dim connectionString As String
    Public reader As MySqlDataReader
    Public counter As Integer



    Public strErrors As String = ""
    Public strRequiredCheck As String = ""
    
    Dim strListName As ArrayList
    Dim strListDescription As ArrayList
    Dim strListPrices As ArrayList


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        strListName = New ArrayList
        strListDescription = New ArrayList
        strListPrices = New ArrayList

        connectionString = "server=localhost; userid=root; password=; database=db_tinstarresort;"
        connection = New MySqlConnection(connectionString)

        Try

            connection.Open()
            Dim strCommand As String = "SELECT name,description,price FROM tbl_promotions"

            command = New MySqlCommand(strCommand, connection)
            command.CommandType = CommandType.Text

            reader = command.ExecuteReader()

            Dim ctr As Integer = 0


            While reader.Read()

                strListName.Add((reader("name")))
                strListDescription.Add((reader("description")))
                strListPrices.Add((reader("price")))

                If Not IsPostBack Then
                    CheckBoxListChoices.Items.Add(reader("name"))
                End If


                ctr = ctr + 1

            End While

            counter = ctr
            reader.Close()
            connection.Close()

        Catch ex As Exception

            Response.Write("<script> alert('" + ex.Message + "') </script>")

        End Try
        'Response.Write("<script> alert('Successful connection to the Database') </script>"
    End Sub

    Public Sub printTables()

        For ctr As Integer = 0 To counter - 1


            Response.Write("<tr>")
            Response.Write("<td>" + strListName(ctr) + "</td>")
            Response.Write("<td>" + strListDescription(ctr) + "</td>")
            Response.Write("<td>" + strListPrices(ctr) + "</td>")
            Response.Write("</tr>")
        Next
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Dim strBuilder As StringBuilder = New StringBuilder

        Dim strReservation As String = ""
        Dim countChecks As Integer = 0
        Dim item As ListItem

        For Each item In CheckBoxListChoices.Items

            If item.Selected Then
                strBuilder.Append(item.Value).Append("|")
                countChecks += 1

            End If

        Next

        'Dim getCheckBoxList As HtmlTable = New HtmlTable
        'Dim rowsCollection As HtmlTableRowCollection
        'Dim checkBoxes As HtmlInputCheckBox = New HtmlInputCheckBox


        'getCheckBoxList.ID = "CheckBoxListChoices"
        'rowsCollection = getCheckBoxList.Rows

        'For row As Integer = 0 To rowsCollection.Count - 1
        '    checkBoxes.ID = "CheckBoxListChoices_" + row

        '    If checkBoxes.Checked Then

        '        strReservation += checkBoxes.Value
        '        countChecks += 1

        '    End If


        'Next

        If countChecks = 0 Then
            strReservation = Nothing
            strRequiredCheck = "Check at least one in the choices"
            Return
        End If




        Dim strCommand As String = "INSERT INTO tbl_reservation(ContactName, ContactAddress, ContactNumber, ContactEmail, ReservationName, TimeOfReservation) VALUES (@Name , @Address, @Number, @Email, @Reservation, @Time)"
        ' Dim strCommand As String = "INSERT INTO tbl_reservation VALUES (@Name , @Address, @Number, @Email, @Reservation)"

        Try
            connection.Open()
            strReservation = strBuilder.ToString()

            command = New MySqlCommand(strCommand, connection)
            command.CommandType = CommandType.Text
            command.Parameters.AddWithValue("@Name", txtName.Text)
            command.Parameters.AddWithValue("@Address", txtAddress.Text)
            command.Parameters.AddWithValue("@Number", txtCnum.Text)
            command.Parameters.AddWithValue("@Email", txtEmail.Text)
            command.Parameters.AddWithValue("@Reservation", strReservation)
            command.Parameters.AddWithValue("@Time", Date.Now.ToString("yyyy/MM/dd HH:mm:ss"))

            command.ExecuteNonQuery()

            connection.Close()

            txtAddress.Text = String.Empty
            txtCnum.Text = String.Empty
            txtEmail.Text = String.Empty
            txtName.Text = String.Empty

            strErrors = "Successful Reservation"
            ' Response.Write("<script> alert('Successful Reservation') </script>")


        Catch ex As Exception
            strErrors = ex.Message

            ' Response.Write("<script> alert('" & ex.Message & "') </script>")
        End Try

    End Sub
End Class