using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
//http://stackoverflow.com/questions/25309837/updatepanel-for-literal-controls
namespace updatepanel_for_literal_controls
{
  public partial class _Default : System.Web.UI.Page
  {
    private const string KeyName = "CustomerList";

    protected void Page_Load(object sender, EventArgs e)
    {
      
      if (!IsPostBack)
      {
        var lst = new[] { new Customer { PersonID = "0", FirstName = "FirstName", CellNumber = "", CraftType = "", EmergencyNumber = "", Group = "", Initials = "", LastName = "" } }.ToList();
        Session[KeyName] = lst;
        GridView1.DataSource = lst;
        GridView1.DataBind();
      }



    }

    protected void EditCustomer(object sender, GridViewEditEventArgs e)
    {
      //throw new NotImplementedException();

    }

    protected void UpdateCustomer(object sender, GridViewUpdateEventArgs e)
    {
      //throw new NotImplementedException();
      var c = Session[KeyName] as IEnumerable<Customer>;
      var result = c.Select(el =>
      {
        dynamic tmp = el;
        foreach (var k in e.Keys)
        {
          tmp[k] = e.NewValues[k];
        }
        return tmp as Customer;
      });

      Session[KeyName] = result;

    }

    protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
    {
      throw new NotImplementedException();
    }

    protected void DeleteCustomer(object sender, EventArgs e)
    {
      throw new NotImplementedException();
    }

    protected void AddNewCustomer(object sender, EventArgs e)
    {
      throw new NotImplementedException();
    }
  }
}
