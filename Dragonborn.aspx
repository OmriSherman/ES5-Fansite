<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["user"] == "Guest")
            Response.Redirect("Error.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-decoration: underline;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .style3
        {
             position: absolute;
            left: 1060px;
            top: 250px;
        height: 213px;
        width: 213px;
    }
    .style4
    {
          position: absolute;
            left: 985px;
            top: 530px;
        height: 213px;
        width: 288px;
    } 
    .style5
    {
        position: absolute;
            left: 961px;
            top: 830px;
        height: 251px;
        width: 312px;
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center class="style51">The Dragonborn</center><br /><br />
<table width="70%" align="center"><tr><td class="style60">
 In Dragon language, "Dovahkiin" is a combination of the words 'Dovah', meaning "Dragon", and 'kiin', meaning "child" or "born".<br />
  Dovahkiin also has a second meaning: the 'Dov' in 'Dovah' refers to Dragonkind, while the 'ah' means "hunter".<br/>
  Interpreted thus, the name reads "Dragonkind Hunter Born," or "Born Hunter of Dragonkind",<br /> 
  an appropriate description of what the Dragonborn is destined to do.<br /><br />
  Something of further interest is that dragons use the term Dovahkiin as a proper noun to address or talk<br />
  about the Dragonborn and the dragon naming convention holds that names consist of three words.<br /><br /></td ></tr>

 <tr><td colspan="2">The Prophecy</td></tr>
 <tr><td class="style60">
    The appearance of the Last Dragonborn was prophesied upon Alduin's Wall, a large edifice found within Sky Haven Temple.<br />
    It depicts several events that would preface the return of the Nordic god of destruction, Alduin.<br />
    The prophecy itself is dire, but scholars believed that its omens had been fulfilled and that a single individual,<br />
    gifted with the same incredible powers held by the dragons themselves,<br />
    may rise to fight against Alduin and assure the world’s survival.<br />
    The prophecy was fulfilled in 4E 201 when Alduin finally returned.<br /><br /></td>
      <td> <img src="pics/DBpic1.jpg" class="style53" alt="Dragonborn" /></td></tr>

     <tr><td colspan="2">Background</td></tr>
     <tr><td class="style60">
      Much like previous Dragonborn individuals who existed throughout history, such as Reman Cyrodiil, Tiber Septim and Miraak,<br />
      the Last Dragonborn has the ability to consume a slain Dragon's soul and absorb its knowledge,<br /> 
        allowing them to learn words of power quickly. Though neither Reman nor Tiber have ever reportedly<br />
        killed a dragon and absorbed its soul. It is said that the Blades have always guided, protected,<br />
        and served the Dragonborn, whom they consider "The Ultimate Dragon Slayer".<br /><br /></td>
        <td><img src="pics/DBpic2.jpg" class="style53" alt="Dragonborn" /></td></tr>
        <tr><td class="style60">
        At the beginning of Skyrim, the Dragonborn is a prisoner, captured while attempting to illegally cross<br />
          the border into Skyrim. While being transported to the settlement of Helgen,<br />
           the Dragonborn discovers that Ulfric Stormcloak, the leader of the Stormcloak rebellion,<br />
            is a fellow prisoner. Upon reaching Helgen, Imperial General Tullius sentences all the prisoners to death,<br />
             but a dragon attacks during the execution, providing a chance for escape.<br /><br /></td></tr>

      <tr><td class="style60"> During the events of the quest "No One Escapes Cidhna Mine", <br/>
       the Dragonborn can choose to remark on whether they have a family or not.<br />
       When talking with Serana, the Dragonborn may comment on what type of relationship the<br />
       Dragonborn had with their parents as well as hinting at their fate. Additionally,<br />
       the Dragonborn may claim that they tasted the flesh of a dead sibling when they were young,<br />
        during the quest The Taste of Death, when Eola questions the Dragonborn about the subject.<br /></td>
       <td><img src="pics/DBpic3.jpg" class="style53" alt="Dragonborn" /><br /><br /></td></tr>
       </table>
       <center>
       
       </center>




</asp:Content>

