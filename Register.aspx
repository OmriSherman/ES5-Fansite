<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
 protected void Page_Load(object sender, EventArgs e)
    {
        if (!((string)Session["user"] == "Guest" || (string)Session["user"] == "Admin"  ))
        Response.Redirect("error.aspx");
 }

        
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
function checkform(that) {
         if (
                 checkname(that.firstname, "firstname")
                 && checkname(that.lastname, "lastname")
                 && checkradio(that.gender)
                 && checkselect(that.day, "day")
                 && checkselect(that.month, "month")
                 && checkselect(that.year, "year")
                 && checkemail(that.email)
                 && checkselect(that.kidomet, "area code")
                 && checknumber(that.phonenum)
                 && checkusername(that.username, "user name")
                 && checkusername(that.pass, "password")
                 && checkrepass(that.truepass, that.pass)
                 && checkcheckbox(that.terms)
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


     function checkradio(that) {
         var i;
         for (i = 0; i < that.length; i++)
             if (that[i].checked)
                 return true;
         alert("You must pick a gender");
         return false;
     }
     function checkselect(that, s) {
         var num = that.value;

         if (num == "0") {
             alert("Must choose a " + s);
             that.focus();
             return false;
         }

         return true;
     }

     function checknumber(that) {
         var i, str = that.value;
         if (str.length == 0) {
             alert("You need to insert phone number");
             that.select();
             return false;
         }
         if (str.length < 7) {
             alert("Phone number must contain seven digits");
             that.select();
             return false;
         }
         for (i = 0; i < str.length; i++) {
             if (!(str.charAt(i) >= "0" && str.charAt(i) <= "9")) {
                 alert("Phone number can contain only digits");
                 that.select();
                 return false;
             }
         }

         return true;
     }


     function checkusername(that, s) {
         var str = that.value;
         if (str.length == 0) {
             alert("Must pick a " + s);
             that.select();
             return false;
         }
         if (str == "Admin"|| str=="guest") {
             alert("Username cannot be Admin or guest");
             that.select();
             return false;
         }

         if (!(str.length >= 4 && str.length <= 12)) {
             alert(s + " must be between 4-12");
             that.select();
             return false;
         }
         return true;
     }


     function checkrepass(that1, that2) {
         var str1 = that1.value;
         var str2 = that2.value;
         if (str1.length == 0) {
             alert("You must re-enter password");
             that1.select();
             return false;
         }
         if (str1 != str2) {
             alert("Password Verification must be equal to the password");
             that1.select();
             return false;
         }
         return true;
     }

     function checkcheckbox(that) {
         if (!(that.checked)) {
             alert("You must agree to the terms");
             return false;
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
      </script>
       <style type="text/css">
        .style7
        {
            color: #000000;
        }
        .style8
        {
            color: #000000;
            font-size: large;
        }
        .style5
    {
        font-weight: 700;
        color: #FFFFFF;
    }
           .style52
           {
               color: #FFFFFF;
               font-size: xx-large;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <span class="style52">Register Form</span>

   <form name="registerform" method="post" action="Users.aspx" onsubmit="return checkform(this)">

    <table cellpadding="5" cellspacing="1" >
    <tr>
    <td class="style8">
        <span class="style1"><strong>First Name:</strong></span>
    </td>
    <td>
    <input type="text" name="firstname" class="style11"  />
    </td>
    </tr>
    
      <tr>
    <td class="style8">
        <strong><span class="style1">Last Name:</span>
    </strong>
    </td>
    <td><input type="text" name="lastname" class="style7"  /></td>
    </tr>
    <tr>
    <td class="style1">
        <strong>Gender:
    </strong>
    </td>
    <td>
        <span class="style1">Male</span><input type="radio" name="gender" value="male" /><span 
            class="style1"> Female</span><span class="style1"><input type="radio" 
            name="gender" value="female" /></span>
    </td>
    </tr>

      <tr>
    <td class="style5">
        <span class="style1">Birthday:</span>
    </td>
    
    <td>
    <select name="day" style="width: 70px">
            
<option value="0">day</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

<select name="month" style="width: 70px">
<option value="0">month</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>

<select name="year" style="width: 70px">
<option value="0">Year</option>
<option value="1983">1983</option>
<option value="1984">1984</option>
<option value="1985">1985</option>
<option value="1986">1986</option>
<option value="1987">1987</option>
<option value="1988">1988</option>
<option value="1989">1989</option>
<option value="1990">1990</option>
<option value="1991">1991</option>
<option value="1992">1992</option>
<option value="1993">1993</option>
<option value="1994">1994</option>
<option value="1995">1995</option>
<option value="1996">1996</option>
<option value="1997">1997</option>
<option value="1998">1998</option>
<option value="1999">1999</option>
<option value="2000">2000</option>
<option value="2001">2001</option>
<option value="2002">2002</option>
<option value="2003">2003</option>
<option value="2004">2004</option>
<option value="2005">2005</option>
<option value="2006">2006</option>
<option value="2007">2007</option>
<option value="2008">2008</option>
<option value="2009">2009</option>
<option value="2010">2010</option>
<option value="2011">2011</option>
<option value="2012">2012</option>
<option value="2013">2013</option>



</select>
   </td>
    </tr>
    <tr>
    <td class="style1">
        <strong>Email:
    </strong>
    </td>
    <td>
    <input type="text" name="email" />
    </td>
    </tr>
    <tr>
    <td>
      <strong><span class="style1">Phone:</span> </strong></td>
        <td>
    
    <select name="kidomet">
    <option value="0">Area Code:</option>
    <option value="077">077</option>
    <option value="050">050</option>
    <option value="052">052</option>
    <option value="054">054</option>
    <option value="053">053</option>
   
    </select>
    <input type="text" name="phonenum" maxlength="7" class="style7" />
 
        
    </td>
   

    
    </tr>

    <tr>
    <td class="style5">
        <span class="style1"><strong>Username:</strong></span>
    </td>

    <td>
    <input type="text" name="username" class="style7" />
   </td>
   </tr>
   
    <tr>
    <td class="style1">
        <strong>Password:</strong>
    </td>
    
    <td>
    <input type="password" name="pass" class="style7" />
    </td>
    </tr>

    <tr>
    <td class="style5">
        <span class="style1"><strong>Password Verification:</strong></span><span class="style7">:</span>
    </td>
    
    <td>
    <input type="password" name="truepass" class="style7" />
    
    </td>
    </tr>
    

    <tr>
    <td class="style1">
        Terms and conditions:
    </td>
    
    <td>
    <textarea style="height: 136px; width: 256px" cols="6" rows="6" readonly="readonly">

 </textarea> 
    <br />
        <span class="style1">I have read the terms and agree </span> <input type="checkbox" checked="checked" name="terms" value="agree" />
    </td>
    
    </tr>
    <tr>
    <td class="style1">
        Opinions / Improvments:
    </td>
    <td><textarea style="height: 74px; width: 188px" cols="6" rows="6" name="whatdoyouthink">Write here opinions and improvments</textarea></td>
    </tr>


    </table>
  <table>
  <tr>
  <td>
  <input type="submit"  value="Apply" class="style3"  />
  </td>
  <td>
   <input type="reset" value="Reset" class="style3" />
  </td>
  </tr>
  </table>
 </form>
 </center>
 </asp:Content>

