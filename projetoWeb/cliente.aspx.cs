using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Loja;

namespace projetoWeb
{
    public partial class cliente2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gridCliente.DataSource = Loja.Loja.Listar();
            gridCliente.DataBind();
     
        }

        protected void gridCliente_PreRender(object sender, EventArgs e)
        {
            GridView grid = (GridView)sender;

            grid.UseAccessibleHeader = true;
            grid.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        [WebMethod]
        public static bool ClienteExiste(string idCliente)
        {
            return Loja.Loja.Existe(Convert.ToInt32(idCliente));
        }
    }
}

  
