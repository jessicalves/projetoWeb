﻿using System;
using System.Collections.Generic;
using System.Data;

namespace Loja
{
    class Loja
    {
        public static List<Cliente> listClientes = new List<Cliente>() { };

        public static DataTable Listar()
        {
            //Console.Clear();
            //Console.WriteLine("-------- LISTA DE CLIENTES ----------");
            //Console.WriteLine("|NOME\t\t" + "|CPF\t\t");
            //Console.WriteLine("--------------------------------------");

            Banco banco = new Banco();
            banco.sql = ("SELECT clie_id as ID, clie_nome as Nome, clie_cpf as CPF FROM public.cliente ORDER BY clie_id");
            return banco.getDataTable();

            //    for(int i = 0; i<ds.Rows.Count; i++)
            //    { 

            //            Console.WriteLine("|" + ds.Rows[i][1] + "\t" + "|" + ds.Rows[i][2] + "\t");

            //    }
            //    Console.ReadKey();
        }

        public static void Selecionar(string cpfSelecionado)
        {
            string cpfProcurado = cpfSelecionado;

            Banco banco = new Banco();
            banco.sql = @"SELECT clie_id, clie_nome, clie_cpf 
                                   FROM public.cliente     
                                   WHERE clie_cpf = @p";
            banco.addParameters("p", cpfProcurado);
            var dados = banco.getDataTable();

            var idCliente = dados.Rows[0][0];
            var nomeBanco = dados.Rows[0][1];
            var cpfBanco = dados.Rows[0][2];

            var clienteBanco = new Cliente()
            {

                nomeCliente = Convert.ToString(nomeBanco),
                cfpCliente = Convert.ToString(cpfBanco),
                idCliente = Convert.ToInt32(idCliente)
            };

            Console.Clear();
            Console.WriteLine("~~~~~~~~~~~~ INFORMAÇÕES DO CLIENTE ~~~~~~~~~~~~");
            Console.WriteLine("\nNOME DO CLIENTE: " + dados.Rows[0][1] + "\nCPF DO CLIENTE: " + dados.Rows[0][2]);

            Console.WriteLine("\n\n\n[3]EDITAR CLIENTE ");
            Console.WriteLine("[4]NOVO PEDIDO");
            Console.WriteLine("[5]LISTAR PEDIDOS");
            Console.WriteLine("[0]VOLTAR");

            int opcaoSelecionada;
            opcaoSelecionada = int.Parse(Console.ReadLine());

            switch (opcaoSelecionada)
            {
                case 3:
                    Console.Write("\nNOVO CPF: ");
                    clienteBanco.cfpCliente = Console.ReadLine();

                    Console.Write("NOVO NOME CLIENTE: ");
                    clienteBanco.nomeCliente = Console.ReadLine();

                    banco.sql = @"UPDATE public.cliente SET clie_nome = @nome , clie_cpf = @cpf WHERE clie_cpf = @p";
                    banco.addParameters("nome", clienteBanco.nomeCliente);
                    banco.addParameters("cpf", clienteBanco.cfpCliente);
                    banco.addParameters("p", cpfProcurado);

                    banco.getDataTable();
                    Console.Clear();
                    Console.WriteLine("\n~~ CLIENTE EDITADO COM SUCESSO ~~");
                    Console.WriteLine("\n[0]VOLTAR");
                    Console.ReadKey();
                    break;

                case 4:
                    Console.Clear();
                    Produto.listarProdutos();
                    Console.WriteLine("\n\nCODIGO DO PRODUTO:(,)");
                    string produtos = Console.ReadLine();
                    Console.WriteLine("\n\nQUANTIDADE:(,)");
                    string quantidade = Console.ReadLine();

                    Banco b = new Banco
                    {
                        sql = @"INSERT INTO public.pedido (pedi_clie_id) VALUES (@clie_id) RETURNING  pedi_id;"
                    };
                    b.addParameters("clie_id", clienteBanco.idCliente);
                    var id = b.GetInt();

                    clienteBanco.fazerCompra(id, produtos, quantidade);

                    Console.WriteLine("\nPEDIDO FEITO COM SUCESSO");
                    Console.ReadKey();

                    break;

                case 5:
                    Console.Clear();
                    Console.WriteLine("~~~~~~~~~~~~ PEDIDOS DO CLIENTE ~~~~~~~~~~~~");
                    Console.WriteLine("\n\nCLIENTE: " + clienteBanco.nomeCliente + "\nCPF: " + clienteBanco.cfpCliente);

                    banco.sql = @"SELECT clie_id,clie_nome,pedi_id, prod_nome
                                FROM public.cliente
                                INNER JOIN public.pedido
                                ON clie_id = pedi_clie_id
                                INNER JOIN public.pedido_x_produto
                                ON pedi_id = pepr_pedi_id
                                INNER JOIN public.produto
                                ON prod_id = pepr_prod_id
                                WHERE clie_id = @id";

                    banco.addParameters("id", clienteBanco.idCliente);
                    var ds = banco.getDataTable();

                    Console.WriteLine("\nPEDIDO" + "\t" + "PRODUTO");

                    for (int i = 0; i < ds.Rows.Count; i++)
                    {
                        Console.WriteLine("|" + ds.Rows[i][2] + "\t" + "|" + ds.Rows[i][3] + "\t");
                    }
                    Console.ReadKey();

                    Console.ReadKey();
                    break;
            }
        }

        public static void Cadastrar(Cliente cliente)
        {
            Banco banco = new Banco();
            banco.sql = @"INSERT INTO public.cliente (clie_nome,clie_cpf) VALUES (@nome,@cpf);";
            banco.addParameters("nome", cliente.nomeCliente);
            banco.addParameters("cpf", cliente.cfpCliente);
            banco.getDataTable();
        }

        public static bool Remover(string clienteParaRemover)
        {
            string remover = clienteParaRemover;
            //Cliente removerCliente = listClientes.Find(x => x.cfpCliente == remover);

            Banco banco = new Banco();
            banco.sql = @"DELETE FROM public.cliente WHERE clie_id = @id";
            banco.addParameters("id", remover);
            banco.getDataTable();

            return true;
        }

        public static bool Existe(int id)
        {
            Banco b = new Banco()
            {
                sql = @"select clie_id from public.cliente where clie_id = @id"
            };
            b.addParameters("id", id);
            var resp = b.getDataTable();

            return resp.Rows.Count > 0;
        }

        public static Cliente GetCliente(int id)
        {
            Banco banco = new Banco()
            {
                sql = "SELECT clie_id, clie_nome, clie_cpf FROM cliente WHERE clie_id=@clie_id"
            };
            banco.addParameters("clie_id", id);
            var c = banco.getDataTable();
            return new Cliente()
            {
                idCliente = Convert.ToInt32(c.Rows[0][0]),
                nomeCliente = c.Rows[0][1].ToString(),
                cfpCliente = c.Rows[0][2].ToString()
            };
        }

        public static bool updateCliente(Cliente c)
        {
            try
            {
                Banco banco = new Banco()
                {
                    sql = "UPDATE cliente SET clie_nome=@clie_nome, clie_cpf=@clie_cpf WHERE clie_id=@clie_id"
                };
                banco.addParameters("clie_id", c.idCliente);
                banco.addParameters("clie_nome", c.nomeCliente);
                banco.addParameters("clie_cpf", c.cfpCliente);
                banco.getDataTable();
                return true;
            } catch (Exception)
            {
                return false;
            }
        }
    }
}

