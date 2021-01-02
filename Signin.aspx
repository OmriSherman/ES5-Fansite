<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
    public bool flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        String username = Request.Form["username"].ToString().Replace("'", "''");
        String pass = Request.Form["pass"].ToString().Replace("'", "''");
        
        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Select * from Users where username='{0}' and pass='{1}';", username,pass);
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count == 0)
            flag = false;
        else
        {
            if ((bool)(dt.Rows[0]["admin"]))
            {
                Session["User"] = "Admin";
                flag = true;
            }
            else
            {
                Session["User"] = dt.Rows[0]["username"];
                flag = true;
            }
        }
        if (dt.Rows.Count == 1)
            Session["vote"] = (string)dt.Rows[0]["vote"];
    }

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20
        {
            text-decoration: underline;
            color: #FFFFFF;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if (flag == false)
  { %>
  <center><p class="style51"><strong>Username or password is incorrect</strong></p></center>
    
      <%}
  else
      Response.Redirect("Default.aspx");
   
   %>
   

</asp:Content>



