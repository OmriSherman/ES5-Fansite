<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    public DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Select * from Users;");    
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        da.Fill(dt);
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.style1
        {
            color: #FFFFFF;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<% 
    Response.Write("<Table border='1' class='style1' cellpadding='5px' bgcolor='black'>");
    Response.Write("<tr align='center'><td>user</td><td>first name</td><td>last name</td><td>password</td><td>Email</td></tr>");
    for(int i = 0; i < dt.Rows.Count; i++)
    {
        Response.Write("<tr>");
        Response.Write("<td>" + dt.Rows[i]["username"] + "</td>");
        Response.Write("<td>" + dt.Rows[i]["firstname"] + "</td>");
        Response.Write("<td>" + dt.Rows[i]["lastname"] + "</td>");
        Response.Write("<td>" + dt.Rows[i]["pass"] + "</td>");
        Response.Write("<td>" + dt.Rows[i]["email"] + "</td>");
        if ((bool)dt.Rows[i]["admin"] != true)
            Response.Write("<td><a href='Deleteuser.aspx?username=" + dt.Rows[i]["username"].ToString() + "'>Delete</a> </td>");
        Response.Write("<td><a href='Edituser.aspx?username=" + dt.Rows[i]["username"].ToString() + "'>Show</a> </td>");
        Response.Write("</tr>");
    }
    Response.Write("</table>");
    %>
    <h1 class="style61">total users:<%=dt.Rows.Count%></h1>
    </center>
</asp:Content>


