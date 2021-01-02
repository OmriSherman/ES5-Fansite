<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["user"] != "Admin")
        
            Response.Redirect("error.aspx");

       
        
            Application.Lock();
            Application["ans1"] = 0;
            Application["ans2"] = 0;
            Application["ans3"] = 0;
            Application["ans4"] = 0;
            Application.UnLock();




            Session["vote"] = "no";
        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Update Users set vote = 'no'" );
        
        Conn.Open();
        Cmd.ExecuteNonQuery();
        Conn.Close();

        Response.Redirect("Default.aspx");
        
    } 

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>

