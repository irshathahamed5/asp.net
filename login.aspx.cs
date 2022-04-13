using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HWlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Buttonsubmit_Click(object sender, EventArgs e)
    {
        string UserName = WebConfigurationManager.AppSettings["PFUserName"];
        string Password = WebConfigurationManager.AppSettings["PFPassword"];
        if (TextBoxUsername.Text == UserName && TextBoxPassword.Text == Password)
        {
            Session.Add("UserId", UserName);
            Response.Redirect("HWadmin.aspx");
        }
        else
        {
            LabelMessage.Text = "please enter the valid user name and password";
        }
    }
}