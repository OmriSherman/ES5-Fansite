<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function checkcontact(that) {
        if (
    checkname(that.firstname, "first name")
    && checkname(that.lastname, "last name")
    && checkemail(that.email)
    && checksub(that.subject, "subject")
    && checksub(that.comment, "comment")
    )
            return true;
        return false;
    }

    function checkname(that, s) {
        var str = that.value;
        var i;
        if (str.length == 0) {
            alert("You must enter " + s);
            that.select();
            return false;

        }
        if (str.length < 2) {
            alert(s + " is too short, two letters atleast");
            that.select();
            return false;
        }
        for (i = 0; i < str.length; i++) {
            if (!((str.charAt(i) >= 'א' && str.charAt(i) <= 'ת') || (str.charAt(i) >= 'a' && str.charAt(i) <= 'z') ||
                 (str.charAt(i) >= 'A' && str.charAt(i) <= 'Z') || (str.charAt(i) == ' ' || str.charAt(i) == '-'))) {
                alert(s + " there can be only letters,space and middleline");
                that.select();
                return false;
            }
        }
        return true;
    }

    function checkemail(that) {
        var str = that.value;
        var i;
        if (str.length == 0) {
            alert("Must insert email address");
            that.select();
            return false;
        }

        for (i = 0; i < str.length; i++) {
            if (!(
              (str.charAt(i) >= 'a' && str.charAt(i) <= 'z') ||
              (str.charAt(i) >= 'A' && str.charAt(i) <= 'Z') ||
              (str.charAt(i) >= '0' && str.charAt(i) <= '9') ||
               str.charAt(i) == '-' ||
               str.charAt(i) == '_' ||
               str.charAt(i) == '@' ||
               str.charAt(i) == '.')) {
                alert("email can contain english letters; '-' ; '_' ; '@' ; '.'");
                that.select();
                return false;
            }
        }

        var arr = str.split("@");
        if (arr.length == 1) {
            alert(" Must have @ in email");
            that.select();
            return false;
        }
        if (arr.length > 2) {
            alert("the character @ can appear only 1 time");
            that.select();
            return false;
        }
        var vec1 = arr[0].split(".");
        if (vec1.length > 2) {
            alert("can be only one . before the @");
            that.select();
            return false;
        }
        for (i = 0; i < vec1.length; i++)
            if (vec1[i].length < 2) {
                alert("Must be at least 2 characters between the dots");
                that.select();
                return false;
            }
        var vec2 = arr[1].split(".");
        if (vec2.length > 3) {
            alert("you must insert more than two dots after the @");
            that.select();
            return false;
        }
        if (vec2.length == 1) {
            alert("There must be atleast one dot after the @");
            that.select();
            return false;
        }
        for (i = 0; i < vec2.length; i++)
            if (vec2[i].length < 2) {
                alert("Must be at least 2 characters between the dots");
                that.select();
                return false;
            }
        if (vec2.length == 2 && vec2[1].length != 3) {
            alert("After the last dot there must be 3 characters");
            that.select();
            return false;
        }
        if (vec2.length == 3 && vec2[2].length != 2) {
            alert("There must be 2 characters after the last dot");
            that.select();
            return false;
        }
        return true;
    }

    function checksub(that, s) {
        var st = that.value;
        if (st.length == 0) {
            alert("must enter " + s);
            that.select();
            return false;
        }
        if (st.length > 255) {
            alert(s + " must be shorter than 255 chars");
            that.select();
            return false;
        }
        return true;
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center class="style51">Contact Us
<form name="contact" method="post" action="ContactDB.aspx" onsubmit="return checkcontact(this)">
<table width="50%" cellpadding="5">
<tr><td class="style60">First name:</td><td><input type="text" name="firstname" /></td></tr>
<tr><td class="style60">Last name:</td><td><input type="text" name="lastname" /></td></tr>
<tr><td class="style60">email:</td><td><input type="text" name="email" /></td></tr>
<tr><td class="style60">Subject:</td><td><input type="text" name="subject" /></td></tr>
<tr><td class="style60">Comment:<br />*up to 255 chars</td><td><textarea cols="20" rows="6" name="comment"></textarea></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Send" /></td></tr>
</table>
</form>
</center>
</asp:Content>

