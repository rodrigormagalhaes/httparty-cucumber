#language: pt

@product
Funcionalidade: Alteração de Produtos
    Como um usuário do Sistema
    Eu quero realizar as requisições na API
    Para realizar alterações de produtos

    Contexto:
        Dado que tenho o endereço de alteração de produtos da API

    Cenário: Alterar um Produto
        Quando realizo uma requisição para alterar um produto
        Então a API retornará os dados do produto alterados