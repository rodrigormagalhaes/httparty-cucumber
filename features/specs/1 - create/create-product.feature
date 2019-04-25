#language: pt

@product @create
Funcionalidade: Cadastrar Produtos
    Como um usuário do Sistema
    Eu quero realizar as requisições na API
    Para realizar cadastro de produtos

    Contexto:
        Dado que tenho o endereço de criação de produtos da API

    Cenário: Cadastrar produto
        Quando realizo uma requisição para cadastrar um produto
        Então a API retornará as informações do produto cadastrado