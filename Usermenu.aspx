<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<a href="Edituser.aspx?username=<%=Session["user"]%>"><input type="button" value="Edit user" /></a><br />
<a href="Contact.aspx"><input type="button" value="Contact us" /></a>
</center>
</asp:Content>

