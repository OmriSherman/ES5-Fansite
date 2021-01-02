<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["user"] != "Admin")
        Response.Redirect("error.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<a href="UsersTable.aspx"><input type="button" value="Users Table" /></a><br />
<a href="Resetvisitors.aspx"><input type="button" value="Reset Visitors" /></a><br />
<a href="Usersearch.aspx"><input type="button" value="User Search" /></a><br />
<a href="Surveyreset.aspx"><input type="button" value="Survey reset" /></a><br />
<a href="Contacttable.aspx"><input type="button" value="Contact table [<%Response.Write(Application["Comment"]);%>]" /></a>
</center>
</asp:Content>

