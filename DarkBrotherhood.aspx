<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["user"] == "Guest")
            Response.Redirect("Error.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center class="style51">The Dark Brotherhood</center><br /><br />
    <span class="style61"><strong>WARNING: This page might contain spoilers!</strong></span><br /><br />
<table width="80%" >
<tr>
<td class="style60">
The Dark Brotherhood is an organization of highly trained assassins who carry out assassination contracts.<br />
 The Dark Brotherhood is called upon by those who wish to utilize their deadly services through a ritual<br />
  called "The Black Sacrament". They were once the most feared organisation in all of Tamriel,<br />
   but have lost their reputation over time. At one point, they were governed by The Five Tenets,<br />
    which set the ground rules for the Brotherhood, but those tenets have long since been abandoned.<br /><br />
    The Dark Brotherhood has been operating in Tamriel for many Eras,<br />
     at one time having many clandestine sanctuaries across the Empire. They revere Sithis,<br />
      the avatar of entropy and chaos, as well as the Night Mother, who is their spiritual leader.<br />
</td>
<td>
    <img src="pics/DBH1.jpg" class="style53" alt="Dark Bortherhood" />
</td>
</tr>
<tr><td colspan="2" class="style51">Dark Brotherhood requirements</td></tr>
<tr><td class="style60">
Any man or woman may join the Dark Brotherhood. Initiates must display the ability to kill mercilessly,<br />
without regret or sorrow. As a result, their ranks include vampires, werewolves, bandits, and mages.<br /><br />
A high sneak skill is recommended before joining the Dark Brotherhood. Jobs done for them often require stealth,<br />
 to kill an enemy without being detected. A very useful perk for this is Assassin's Blade. To get this,<br />
  the Dragonborn must have a level 50 sneak skill (along with the other perks leading up to it).<br />
   It will allow successful sneak attacks with daggers to do 15 times normal damage.<br /><br /><br /><br />
</td></tr>
<tr><td colspan="2" class="style51">Joining or destroing the Brotherhood</td></tr>
<tr><td class="style60">
24 hours after Innocence Lost has been completed, a courier will appear to the Dragonborn in any city,<br />
 with a note saying, "We know." A black hand-print is below the words. After receiving the note,<br />
  sleeping in any bed for any amount of time will begin the next phase of the quest<br />
   (the acquisition of this note is optional). While sleeping, the Dragonborn is abducted by<br />
    a Dark Brotherhood assassin and wakes up in an Abandoned Shack.<br />
     This is where the decision to join or destroy the Dark Brotherhood must be made.<br /><br />
There, the Dragonborn is asked by Astrid, the Dark Brotherhood assassin,<br />
 to kill one of three people in the room, initiating the quest With Friends Like These.<br />
  Killing one, two, or even all of the potential victims will earn the Dragonborn an invitation<br />
   to join the Dark Brotherhood. The Dragonborn may also take the opportunity to destroy the<br />
    organization by attacking Astrid. This will initiate the quest Destroy the Dark Brotherhood!.<br />
     Note that this is the only chance to destroy the Dark Brotherhood, because after joining,<br />
      the Brotherhood members are otherwise unable to be killed.<br />
</td>
<td>
<img src="pics/DBH2.png" class="style53" alt="The Five Tenets" />
</td>
</tr>
</table>
<a href="Sidestories.aspx"><input type="button" value="Back to all side stories" /></a>
</asp:Content>

