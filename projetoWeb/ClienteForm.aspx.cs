using Loja;
using System;

namespace projetoWeb
{
    public partial class ClienteForm : System.Web.UI.Page
    {
        private Cliente cliente;

        public ClienteForm()
        {
            cliente = null;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = this.Request.QueryString["id"];
                if (id != null)
                {
                    cliente = new Cliente();
                    cliente = Loja.Loja.GetCliente(Convert.ToInt32(id));
                    nomeCliente.Value = cliente.nomeCliente;
                    cpfCliente.Value = cliente.cfpCliente;
                }
            }
        }
        protected void BotaoSalvar_Click(object sender, EventArgs e)
        {
            if (cliente == null)
            {
                cliente = new Cliente
                {
                    nomeCliente = nomeCliente.Value,
                    cfpCliente = cpfCliente.Value
                };
                Loja.Loja.Cadastrar(cliente);
            }
            else
            {
                if (Loja.Loja.updateCliente(cliente))
                {

                }
                else
                {

                }
            }
            Response.Redirect("~/cliente.aspx");
        }
    }
}