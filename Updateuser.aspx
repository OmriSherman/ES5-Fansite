<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["user"] == "אורח")
            Response.Redirect("error.aspx");

        String lastname = Request.Form["lastname"].ToString().Replace("'", "''");
        String firstname = Request.Form["firstname"].ToString().Replace("'", "''");
        String pass = Request.Form["pass"].ToString().Replace("'", "''");
        String username = Request.Form["username"].ToString().Replace("'", "''");
        String gender = Request.Form["gender"];
        String year = Request.Form["year"];
        String month = Request.Form["month"];
        String day = Request.Form["day"];
        String email = Request.Form["email"];
        String num = Request.Form["kidomet"];
        String tel = Request.Form["phonenum"];
        String birthday = day + "/" + month + "/" + year;
        String phonenum = num + tel;

        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;


        Cmd.CommandText = String.Format("Update Users set pass='{0}', firstname='{1}', lastname='{2}', gender='{3}' , email='{4}' , phone = '{5}' , birthday = '{6}' where username = '{7}' ;", pass, firstname, lastname, gender, email, phonenum, birthday, username);
        Conn.Open();
        Cmd.ExecuteNonQuery();
        Conn.Close();
    }
    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        color: #FFFF00;
        font-size: 19pt;
        font-family: "Times New Roman", Times, serif;
    }
        .style10
        {
            color: #FF9933;
        }
        .style11
        {
            font-family: "Times New Roman", Times, serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <span class="style51">User has been updated!</span><br />
    <br />
    <br />
    <%if ((string)Session["user"] == "Admin")
      {%>
 <a href="UsersTable.aspx">back to table</a>
<%} %>
<%else
      {%>
        
<a href="Usermenu.aspx">Back to user menu</a>
        <%} %>
</center>
</asp:Content>

