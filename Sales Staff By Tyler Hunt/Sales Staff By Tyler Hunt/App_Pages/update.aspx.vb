Public Class update
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub lnkBtn_Logout_Click(sender As Object, e As EventArgs) Handles lnkBtn_Logout.Click
        Response.Redirect("default.aspx")
    End Sub
End Class