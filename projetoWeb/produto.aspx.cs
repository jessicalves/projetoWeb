﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoWeb
{
    public partial class produto2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gridProduto.DataSource = Loja.Produto.listarProdutos();
            gridProduto.DataBind();
        }

        protected void gridProduto_PreRender(object sender, EventArgs e)
        {
            GridView grid = (GridView)sender;

            grid.UseAccessibleHeader = true;
            grid.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}