using System;
public partial class Venue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptTravel.DataSource = Db.GetTable("SELECT * FROM TravelInfo ORDER BY SortOrder");
            rptTravel.DataBind();
        }
    }
}
