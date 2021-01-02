<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<form name="search" method="post" action="Searchtable.aspx">
<table>
<tr>
<td>
<select name="field">
<option value="firstname">firstname</option>
<option value="lastname">lastname</option>
<option value="username">username</option>
<option value="email">email</option>
<option value="birthday">month</option>
</select>
</td>
<td>
<select name="sug">
<option value="1">Equals</option>
<option value="2">Appears</option>
<option value="3">Starts with</option>
<option value="4">Ends with</option>
</select>
</td>
<td>
<select name="order">
<option value="ASC">Up to down</option>
<option value="DESC">Down to up</option>
</select>
</td>
</tr>
<tr>
<td colspan="3"><input type="text" name="search" /></td>
</tr>
<tr><td colspan="3"><input type="submit" value="Search" /></td></tr>
</table>
</form>
</center>
</asp:Content>

