<%@ Application Language="C#" %>
<%@ Import Namespace="asp.net" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

 <script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        Application.Add("key", "12345");
        string key = (string)Application["key"];
        HWsettings settings = HWManager.loadsettings(Server.MapPath("~/App_Data/settings.xml"));
        Application.Add("settings", settings);
    }
    void Session_Start(object sender, EventArgs e)
    {
        if(Session["counter"]==null)
        {
            Session.Add("counter", 0);
        }
        int icountter = Convert.ToInt32(Session["counter"]);
        icountter++;
        Session["counter"] = icountter.ToString();
        
    }

</script>
