#language: pt

Funcionalidade: Criar usuário
    Como um usuário do Sistema
    Eu quero realizar as requisições na API
    Para realizar cadastro de usuários

    Cenário: Tentativa de cadastro de usuário não informando o campo name
        Dado que tenho o endereço da API
        Quando realizo requisição de cadastro de usuário não informando campo name
        Então a API retornará erro no cadastro