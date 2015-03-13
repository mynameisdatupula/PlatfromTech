Imports MySql.Data
Imports MySql.Data.MySqlClient


Public Class Reservation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("login") IsNot Nothing Then

            Dim connection As MySqlConnection = New MySqlConnection("server=localhost; userid=root; password=; database=db_tinstarresort;")

            Try

                connection.Open()
                Dim cmd As MySqlCommand = New MySqlCommand("DELETE FROM tbl_reservation WHERE id=@id", connection)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@id", Request.QueryString("id"))
                cmd.ExecuteNonQuery()

                connection.Close()

                Response.Redirect("admin.aspx")
            Catch ex As Exception
                Response.Write("<script> alert('" + ex.Message + "') </script>")
            End Try



        End If
        Response.Redirect("admin.aspx")

    End Sub

End Class