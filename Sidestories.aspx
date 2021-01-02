<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center class="style51">Side Stories
<table width="80%" align="center" cellpadding="10" >
<tr>
<td><a href="DarkBrotherhood.aspx">
   <img src="pics/ninja.png"  alt="Dark Brotherhood" 
        onmouseover="this.src='pics/ninja_white.png'" 
        onmouseout="this.src='pics/ninja.png'" class="style54" /><br />Dark<br />Brotherhood</a></td>
   
   <td><a href="ThievesGuild.aspx">
   <img src="pics/thief.png"  alt="Thieves Guild"
    onmouseover="this.src='pics/thief_white.png'" 
    onmouseout="this.src='pics/thief.png'" class="style54"/><br />Thieves<br />Guild</a></td>

    <td><a href="Winterhold.aspx">
    <img src="pics/mage.png" alt="College of Winterhold"
    onmouseover="this.src='pics/mage_white.png'"
    onmouseout="this.src='pics/mage.png'" class="style54"/><br />College of<br />Winterhold</a></td>
</tr>
</table>
</center>
</asp:Content>

