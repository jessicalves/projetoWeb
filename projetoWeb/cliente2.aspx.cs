﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
    }
}