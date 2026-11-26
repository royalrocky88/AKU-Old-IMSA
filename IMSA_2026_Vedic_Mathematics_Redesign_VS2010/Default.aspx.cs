using System;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable c = Db.GetTable("SELECT TOP 1 * FROM Conference WHERE IsActive=1 ORDER BY ConferenceId DESC");
            if (c.Rows.Count > 0) litIntro.Text = Server.HtmlEncode(c.Rows[0]["ShortDescription"].ToString());

            rptMarquee.DataSource = Db.GetTable("SELECT TOP 10 * FROM Notifications WHERE IsActive=1 ORDER BY PublishDate DESC, NotificationId DESC");
            rptMarquee.DataBind();

            rptHighlights.DataSource = Db.GetTable("SELECT * FROM ProgrammeHighlights ORDER BY SortOrder");
            rptHighlights.DataBind();
        }
    }
}
