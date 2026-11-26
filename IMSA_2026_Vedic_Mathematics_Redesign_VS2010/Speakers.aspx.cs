using System;
public partial class Speakers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptLeaders.DataSource = Db.GetTable("SELECT * FROM Speakers WHERE SpeakerType NOT LIKE 'Eminent%' ORDER BY SortOrder");
            rptLeaders.DataBind();
            rptEminent.DataSource = Db.GetTable("SELECT * FROM Speakers WHERE SpeakerType='Eminent Speaker' ORDER BY SortOrder");
            rptEminent.DataBind();
        }
    }
}
