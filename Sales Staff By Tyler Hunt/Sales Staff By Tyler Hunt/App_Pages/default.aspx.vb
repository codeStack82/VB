Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub btn_Submit_Click(sender As Object, e As EventArgs) Handles btn_Submit.Click
        If Page.IsValid Then
            Response.Redirect("update.aspx")
        End If
    End Sub
End Class