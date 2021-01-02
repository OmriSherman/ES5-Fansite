<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script type="text/javascript">
        function checkvote(that) {
        var i;
        <%if((string)(Session["User"])=="Guest")
        {%>
        alert("Must login to answer the survey");
        return false;
        <%}%>
            var ans = that.ans;
            for (i = 0; i < that.ans.length; i++)
                if (that.ans[i].checked)
                    return true;
            alert("Must pick an answer before submitting");
            return false;
        }
    </script>
    <style type="text/css">
        .style2
        {
            color: #FFFFFF;
            font-size: xx-large;
            text-decoration: underline;
        }
        .style4
        {
            width: 107px;
        }
        .style5
        {
             position: absolute;
            left: 786px;
            top: 970px;
        height: 235px;
        width: 313px;
    }
        .style6
        {
            color: #FFFFFF;
            font-size: large;
        }
        .style7
        {
            font-size: large;
        }
        .style10
        {
            width: 107px;
            font-size: large;
        }
        .style11
        {
            color: #FFFFFF;
            width: 107px;
            font-size: large;
        }
        .style13
        {
            color: #FF0000;
        }
        .style14
        {
            color: #FF0000;
            font-size: large;
        }
        .style15
        {
            font-size: large;
            color: #0066CC;
        }
        .style16
        {
            color: #0066CC;
        }
        .style17
        {
            color: #00FF00;
        }
        .style18
        {
            color: #00FF00;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center><p class="style2"><strong>Skills</strong></p></center>

 <center>
     <img src="pics/Skills.png" alt="skills are divided to mage,warrior and thief" 
        style="width: 801px; height: 168px"/><br /><br /><br class="style1" /></center>
        <span class="style1">Skills represent actions that can be taken in game; there are 18 in total and each is tracked by its own system of skill points.</span><br 
        class="style1" />
         <span class="style1">Skill points are a measure of how proficient the Dragonborn is at these skills and increasing them grants benefits to the skill</span><br 
        class="style1" />
          <span class="style1">as well as granting access to perks that may be taken upon leveling up. Also, when a certain level is reached in some skills,</span><br 
        class="style1" />
           <span class="style1">guards and other NPCs will comment on it.</span><br 
        class="style1" /><br /><br />

    <span class="style1">All 18 skills can be grouped into 3 distinct categories:</span><br /><br />
 <center>
 <table border="2">
 <tr><td class="style11">Warrior</td><td class="style11">Mage</td><td class="style11">Thief</td></tr>
 <tr><td rowspan="6" class="style10">
     <span class="style6"><a href="SkillDB.aspx?id=Archery"><span class="style13">Archery</span></a></span><br 
         class="style14" />
     <span class="style6"><a href="SkillDB.aspx?id=Block"><span class="style13">Block</span></a></span><br
      class="style14" />
     <span class="style6"><a href="SkillDB.aspx?id=HeavyArmor"><span class="style13">Heavy Armor</span></a></span><br 
         class="style14" />
     <span class="style6"><a href="SkillDB.aspx?id=OneHanded"><span class="style13">One Handed</span></a></span><br 
         class="style14" />
     <span class="style6"><a href="SkillDB.aspx?id=TwoHanded"><span class="style13">Two Handed</span></a></span><br 
         class="style14" />
     <span class="style6"><a href="SkillDB.aspx?id=Smithing"><span class="style13">Smithing</span></a>
 </span>
 </td>
 <td rowspan="6" class="style4">
     <span class="style6"><a href="SkillDB.aspx?id=Alteration"><span class="style16">Alteration</span></a></span><br 
         class="style15" />
     <span class="style6"><a href="SkillDB.aspx?id=Conjuration"><span class="style16">Conjuration</span></a></span><br 
         class="style15" />
     <span class="style6"><a href="SkillDB.aspx?id=Destruction"><span class="style16">Destruction</span></a></span><br 
         class="style15" />
     <span class="style6"><a href="SkillDB.aspx?id=Illusion"><span class="style16">Illusion</span></a></span><br 
         class="style15" />
     <span class="style6"><a href="SkillDB.aspx?id=Restoration"><span class="style16">Restoration</span></a></span><br 
         class="style15" />
     <span class="style1"><a href="SkillDB.aspx?id=Enchanting"><span class="style15">Enchanting</span></a><span 
         class="style7"> </span>
  </span>
  </td>
  <td rowspan="6" class="style10">
      <span class="style6"><a href="SkillDB.aspx?id=Alchemy"><span class="style17">Alchemy</span></a></span><br 
          class="style18" />
      <span class="style6"><a href="SkillDB.aspx?id=LightArmor"><span class="style17">Light Armor</span></a></span><br 
          class="style18" />
      <span class="style6"><a href="SkillDB.aspx?id=lockpicking"><span class="style17">Lockpicking</span></a></span><br 
          class="style18" />
      <span class="style6"><a href="SkillDB.aspx?id=Pickpocket"><span class="style17">Pickpocket</span></a></span><br 
          class="style18" />
      <span class="style6"><a href="SkillDB.aspx?id=Sneak"><span class="style17">Sneak</span></a></span><br 
          class="style18" />
      <span class="style6"><a href="SkillDB.aspx?id=Speech"><span class="style17">Speech</span></a></span><br class="style6" />
  </td></tr>
</table><br /><br />
 </center>
 <span class="style1">The level of a given skill is increased as that skill is used successfully - Archery is increased when an arrow hits its target;</span><br 
        class="style1" />
    <span class="style1">Destruction is increased when a spell causes damage to the target; Sneak increases when the Dragonborn remains undetected in Sneak mode,</span><br 
        class="style1" />
    <span class="style1">while in range of NPCs who otherwise could detect the Dragonborn etc. Some skills are more passive in the nature of their leveling,</span><br 
        class="style1" />
    <span class="style1">such as Conjuration, which increases a little bit each time the Dragonborn summons a Bound Weapon or an Atronach, or even soul traps an enemy.</span><br 
        class="style1" />
    <span class="style1">But these types of skills must also be used in combat in order to gain the increase.</span><br 
        class="style1" />
    <span class="style1">Some skills, specifically Lockpicking, can increase when attempts to pick a lock are unsuccessful, or when a lockpick breaks.</span><br 
        class="style1" />
    <span class="style1">When taken from an in-character context, the idea is that the Dragonborn character is learning as they go. Each release of a bow,</span><br 
        class="style1" />
    <span class="style1">each hitting swing of a sword, each spell cast successfully, or each lock picked is a learning experience for the character</span><br 
        class="style1" />
    <span class="style1">, and slowly these experiences give the character greater expertise in that certain skill.</span><br /><br /><br />

    <span class="style1">As in previous Elder Scrolls titles, the Dragonborn can pay certain NPCs for training.</span><br 
        class="style1" />
     <span class="style1">Each training session provides a single level up for a particular skill,</span><br 
        class="style1" />
      <span class="style1">and the Dragonborn can train at most five times per character level. Unlike Oblivion,</span><br 
        class="style1" />
       <span class="style1">master trainers in Skyrim cannot advance a Dragonborn's skills beyond level 90.</span><br 
        class="style1" />
        <span class="style1">The cost of training grows as the Dragonborn's current skill level increases.
    </span><br /><br />

    <span class="style1">In order to achieve a character level up, the player must earn a pre-specified number of experience points,</span><br 
        class="style1" />
     <span class="style1">which are acquired by leveling up any of the player's skills.</span><br 
        class="style1" />
      <span class="style1">The effort required to level up a given skill increases with the current level of that skill. Generally,</span><br 
        class="style1" />
       <span class="style1">using a more advanced feature of a skill, such as an adept spell, advances the skill more than a novice feature or spell.</span><br /><br /><br /><br /><br />
      <%if ((string)Session["vote"] == "no")
      {%> 
       <form name="seker" action="Addvote.aspx" method="post" onsubmit="return checkvote(this)">
    <table>
    
    <tr><td class="style1">In your opinion,Which is the best combat art?</td></tr>
    <tr><td class="style1">Warrior</td><td><input type="radio" value="1" name="ans" /></td></tr>
    <tr><td class="style1">Mage</td><td><input type="radio" value="2" name="ans" /></td></tr>
    <tr><td class="style1">Thief</td><td><input type="radio" value="3" name="ans" /></td></tr>
    <tr><td class="style1">None</td><td><input type="radio" value="4" name="ans" /></td></tr>
    <tr><td><input type="submit" value="Submit" /></td></tr>
    </table>
    </form>
    <%} %>
     <%else
      {%>
      <table cellspacing="10">
     <tr><td class="style1">Warrior</td><td class="style1"><%=Application["ans1"]%></td></tr>
      <tr><td class="style1">Mage</td><td class="style1"><%=Application["ans2"]%></td></tr>
      <tr><td class="style1">Thief</td><td class="style1"><%=Application["ans3"]%></td></tr>
       <tr><td class="style1">None</td><td class="style1"><%=Application["ans4"]%></td></tr>
       <tr><td class="style11">Total votes:</td><td class="style1"><%=(int)(Application["ans1"]) + (int)(Application["ans2"]) + (int)(Application["ans3"]) + (int)(Application["ans4"])  %></td></tr>
       <%} %>
    </table>
</asp:Content>

