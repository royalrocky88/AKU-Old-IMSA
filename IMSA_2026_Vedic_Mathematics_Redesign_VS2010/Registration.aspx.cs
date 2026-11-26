using System;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptFees.DataSource = Db.GetTable("SELECT * FROM ParticipationFees ORDER BY SortOrder");
            rptFees.DataBind();
        }
    }
}
