<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
        protected void Page_Load(object sender, EventArgs e)
     {
         if ((string)Session["user"] != "Admin")
         {
             Response.Redirect("error.aspx");

         }
        String email = Request.QueryString["email"];
        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Delete from Contact where email='{0}';", email);
            Conn.Open();
            Cmd.ExecuteNonQuery();
            Conn.Close();
            Application["Comment"] = (int)Application["Comment"] - 1;
        
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            color: #FFFFFF;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <span class="style2"><strong>Comment deleted successfully.
</strong></span><strong>
<br class="style2" />
    </strong>
<br />
<a href="Contacttable.aspx">Back to comments table</a>
</center>
</asp:Content>

