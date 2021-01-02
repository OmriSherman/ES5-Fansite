<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    public DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        String id = Request.QueryString["id"];
        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"data\sitedb.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Select * from Skills where Skillname = '{0}';",id);
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        da.Fill(dt);
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <LINK href="style/StyleSheet.css" rel="stylesheet" type="text/css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center>
<center><p class="style51"><strong><font color="white"><%=dt.Rows[0]["Skillname"] %></font></strong></p></center>
    <table class="table1"><tr><td><img src="pics/<%=dt.Rows[0]["Skillname"] %>.png" class="style3" alt="Alchemy" /></td></tr></table><br />
    <table width="40%" align="center"><tr><td class="style60">
  
  <%=dt.Rows[0]["info1"] %>
  <br />
  <%=dt.Rows[0]["info2"] %>
  <br />
    <%=dt.Rows[0]["info3"]%>
    
   </td></tr></table><br /><br />
    <iframe width="560" height="315" src="<%=dt.Rows[0]["video"] %>" frameborder="0"></iframe>
    </center>
</asp:Content>

