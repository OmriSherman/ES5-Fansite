<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server"> 
    public bool flag = true;
    public DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        string search = Request.Form["search"];
        string field = Request.Form["field"];
        string sug = Request.Form["sug"];
        string order = Request.Form["order"];
        

        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Select * from Users;");    
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        
        switch (sug)
        {
            case "1": Cmd.CommandText = String.Format("select * from users where {0}='{1}' order by {0} {2};", field, search, order); break;
            case "2": Cmd.CommandText = String.Format("select * from users where {0} like '%{1}%' order by {0} {2};", field, search, order); break;
            case "3": Cmd.CommandText = String.Format("select * from users where {0} like '{1}%'  order by {0} {2};", field, search, order); break;
            case "4": Cmd.CommandText = String.Format("select * from users where {0} like '%{1}'  order by {0} {2};", field, search, order); break;
            case "5": Cmd.CommandText = String.Format("Select * from users where {0} like '%/{1}/%' order by {0} {2};", field, search, order); break;
        }
        da.Fill(dt);
            if(dt.Rows.Count==0)
                flag=false;
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<% 
    Response.Write("<Table border='1' class='style1' cellpadding='5px'>");
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
            Response.Write("<td><a href='Deleteuser.aspx?user=" + dt.Rows[i]["username"].ToString() + "'>Delete</a> </td>");
        Response.Write("<td><a href='Edituser.aspx?user=" + dt.Rows[i]["username"].ToString() + "'>Show</a> </td>");
        Response.Write("</tr>");
    }
    Response.Write("</table>");
    if (dt.Rows.Count == 0)
        Response.Write("<h1 class='style51'>No users match the search requirements<h1/>");
    %>
    <h1 class="style61">Total matches:<%=dt.Rows.Count%></h1>
    <a href="Usersearch.aspx"><input type="button" value="Return to user search" /></a>
    </center>
</asp:Content>

