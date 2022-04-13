using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            HWsettings settings = (HWsettings)Application["settings"];

            LabelDefaultText1.Text = settings.DefaultText1;
            LabelDefaultText2.Text = settings.DefaultText2;
        }
        catch (Exception)
        {

        }
    }

}