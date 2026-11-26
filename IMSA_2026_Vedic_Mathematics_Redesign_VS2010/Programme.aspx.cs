using System;
public partial class Programme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptHighlights.DataSource = Db.GetTable("SELECT * FROM ProgrammeHighlights ORDER BY SortOrder");
            rptHighlights.DataBind();
        }
    }
}
