<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.Form["ans"];


        switch (a)
        {
            case "1": Application.Lock(); Application["ans1"] = (int)Application["ans1"] + 1; Application.UnLock(); break;
            case "2": Application.Lock(); Application["ans2"] = (int)Application["ans2"] + 1; Application.UnLock(); break;
            case "3": Application.Lock(); Application["ans3"] = (int)Application["ans3"] + 1; Application.UnLock(); break;
            case "4": Application.Lock(); Application["ans4"] = (int)Application["ans4"] + 1; Application.UnLock(); break;
        }
        Session["vote"] = "yes";
        
        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);


        Cmd.CommandText = String.Format("Update users Set vote='yes' where username = '{0}';", Session ["User"]);
        Conn.Open();
        Cmd.ExecuteNonQuery();
        Conn.Close();
        Response.Redirect("Skills.aspx");
    
   
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

