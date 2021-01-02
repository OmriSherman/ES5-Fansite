<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        Application["Comment"] = 0;
        Application["Visitors"] = 0;
        Application["ans1"] = 0;
        Application["ans2"] = 0;
        Application["ans3"] = 0;
        Application["ans4"] = 0;
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        Application.Lock();
        Application["Visitors"] = (int)(Application["Visitors"]) + 1;
        Application.UnLock();
        Session["User"] = "Guest";
        Session["vote"] = "no";

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
