#language: pt

@product
Funcionalidade: Busca de Produtos
    Adicionar descrição aqui

    Contexto:
        Dado que tenho o endereço da API
    
    Cenário: Busca produto
        Quando realizo uma requisição para buscar um produto
        Então a API retornará o produto buscado