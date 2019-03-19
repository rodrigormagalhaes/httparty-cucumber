#language: pt

@product
Funcionalidade: Deletar Produtos
    Como um usuário do Sistema
    Eu quero realizar as requisições na API
    Para realizar deleção de produtos

    Contexto:
        Dado que tenho o endereço de deleção de produtos da API

    Cenário: Deletar produto
        Quando realizo uma requisição para deletar um produto
        Então a API retornará sucesso na deleção com os dados do produto deletado