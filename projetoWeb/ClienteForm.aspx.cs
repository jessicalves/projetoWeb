using Loja;
using System;

namespace projetoWeb
{
    public partial class ClienteForm : System.Web.UI.Page
    {
        private Cliente cliente;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
                var id = this.Request.QueryString["id"];
                if (id != null)
                {
                    //cliente = new Cliente();
                    cliente = Loja.Loja.GetCliente(Convert.ToInt32(id));
                    nomeCliente.Text = cliente.nomeCliente;
                    cpfCliente.Text = cliente.cfpCliente;
                }
            //}
        }
        protected void BotaoSalvar_Click(object sender, EventArgs e)
        {
            if (Request["Op"] == "Novo")
            {
                cliente = new Cliente
                {
                    nomeCliente = nomeCliente.Text,
                    cfpCliente = cpfCliente.Text
                };

                Loja.Loja.Cadastrar(cliente);
            }
            else
            {
                if (Loja.Loja.updateCliente(new Cliente(nomeCliente.Text, cpfCliente.Text, Convert.ToInt32(Request["Id"]))))
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