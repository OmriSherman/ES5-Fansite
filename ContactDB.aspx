<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        String lastname = Request.Form["lastname"].ToString().Replace("'", "''");
        String firstname = Request.Form["firstname"].ToString().Replace("'", "''");
        String email = Request.Form["email"];
        String subject = Request.Form["subject"].ToString().Replace("'", "''");
        String comment = Request.Form["comment"];

        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        
        Cmd.CommandText = String.Format("Insert into Contact(firstname , lastname , email , subject , comment) Values ('{0}' ,'{1}' ,'{2}' ,'{3}' ,'{4}');", firstname, lastname, email, subject, comment);
        Conn.Open();
        Cmd.ExecuteNonQuery();
        Conn.Close();
        Application["Comment"] = (int)Application["Comment"] + 1;
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center class="style51">Your message has been recieved, we'll respond shortly.<br />
<a href="Default.aspx"><input type="button" value="Back to homepage" /></a></center>
</asp:Content>

