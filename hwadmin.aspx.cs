using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HWadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            HWsettings settings = (HWsettings)Application["settings"];

            TextBoxDefaultText1.Text = settings.DefaultText1;
            TextBoxDefaultText2.Text = settings.DefaultText2;
            TextBoxHeaderText.Text = settings.HeaderText;
            TextBoxFooterText.Text = settings.FooterText;
        }

    }

    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        HWsettings settings = (HWsettings)Application["settings"];

        settings.DefaultText1 = TextBoxDefaultText1.Text;
        settings.DefaultText2 = TextBoxDefaultText2.Text;
        settings.HeaderText = TextBoxHeaderText.Text;
        settings.FooterText = TextBoxFooterText.Text;

        HWManager.savesettings(Server.MapPath("~/App_Data/settings.xml"), settings);
        Application["settings"] = settings;
    }
}