using System;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI;

public partial class Committee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = Db.GetTable("SELECT DISTINCT CommitteeName, MIN(SortOrder) AS SortOrder FROM CommitteeMembers GROUP BY CommitteeName ORDER BY MIN(SortOrder)");
            rptCommittees.DataSource = dt;
            rptCommittees.DataBind();
        }
    }

    protected void rptCommittees_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string name = DataBinder.Eval(e.Item.DataItem, "CommitteeName").ToString();
            Repeater r = (Repeater)e.Item.FindControl("rptMembers");
            r.DataSource = Db.GetTable("SELECT * FROM CommitteeMembers WHERE CommitteeName=@n ORDER BY SortOrder",
                new System.Data.SqlClient.SqlParameter("@n", name));
            r.DataBind();
        }
    }
}
