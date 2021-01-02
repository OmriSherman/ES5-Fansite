<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
  

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-decoration: underline;
            color: #FFFFFF;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <img src="pics/Error.jpg" style="width: 701px; height: 468px;" alt="stop" /><br />
    <%if ((string)Session["user"] == "Guest")
      {%>
        <span class="style2"><strong>This page is only for signed users!</strong></span>
        <%} %>
        <%else
      {%>
          <span class="style61"><strong>You're already registered!
          </strong></span>
          <%} %>

<strong>
<br />
        </strong>
        <br /><br />
        <a href="Default.aspx">Return to Homepage</a>
    </center>
</asp:Content>

