#language: pt

@product
Funcionalidade: Busca de Produtos
    Como um usuário do Sistema
    Eu quero realizar as requisições na API
    Para realizar busca de produtos

    Contexto:
        Dado que tenho o endereço de busca de pedidos da API
    
    Cenário: Busca de produto inválido
        Quando realizo uma requisição para buscar um produto inválido
        Então a API retornará que o produto não foi encontrado