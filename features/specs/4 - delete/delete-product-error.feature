#language: pt

@product
Funcionalidade: Deletar Produtos
    Como um usuário do Sistema
    Eu quero realizar as requisições na API
    Para realizar deleção de produtos

    Contexto:
        Dado que tenho o endereço de deleção de produtos da API

    Cenário: Tentativa de deletar produto inexistente
        Quando realizo uma requisição para deletar um produto inexistente
        Então a API retornará que o produto a ser deletado não foi encontrado