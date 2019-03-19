#language: pt

@product
Funcionalidade: Busca de Produtos
    Como um usuário do Sistema
    Eu quero realizar as requisições na API
    Para realizar busca de produtos

    Contexto:
        Dado que tenho o endereço de busca de pedidos da API
    
    Cenário: Busca produto
        Quando realizo uma requisição para buscar um produto
        Então a API retornará o produto buscado