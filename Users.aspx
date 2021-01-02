<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
     public bool flag;
        protected void Page_Load(object sender, EventArgs e)
     {
        String lastname = Request.Form["lastname"].ToString().Replace("'", "''");
        String firstname = Request.Form["firstname"].ToString().Replace("'", "''");
        String gender = Request.Form["gender"];
        String passes = Request.Form["pass"].ToString().Replace("'", "''");
        String username = Request.Form["username"].ToString().Replace("'", "''");
        String email = Request.Form["email"];
        String birthday = Request.Form["day"] + "/" + Request.Form["month"] + "/" + Request.Form["year"];
        String phone = Request.Form["kidomet"] + Request.Form["phonenum"];

        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Select * from Users where username='{0}';", username);
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
        if (dt.Rows.Count != 0)
            flag = false;
        else
        {
            Cmd.CommandText = String.Format("Insert into Users(username , pass, firstname , lastname , gender , birthday , email , phone , vote) Values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','no');", username, passes, firstname, lastname, gender, birthday, email, phone);
            Conn.Open();
            Cmd.ExecuteNonQuery();
            Conn.Close();
            Session["user"] = username;
            flag = true;
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        color: #FFFFFF;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center dir="rtl">
<%if (flag == false)
  { %>
  <table align="center">
      <tr ><td><h1 class="style60">Username is already taken!</h1><br /></td></tr>
     <tr><td><a href="register.aspx"><input type="button" value="Back to registeration" /></a></td></tr>
 </table>
 <table align="center">
 <tr><td>
<%}
  else
     Response.Write("<h1 class='style60'><b>" + "Welcome! You have successfully signed up!" + "</b></h1><br/>");
   %>
<a href="Default.aspx"><input type="button" value="Back to homepage" /></a><br /><br />
</td></tr>
</table>
</center>
</asp:Content>


