#language: pt

Funcionalidade: Criar usuário
    Como um usuário do Sistema
    Eu quero realizar as requisições na API
    Para realizar cadastro de usuários

    Cenário: Cadastrar um álbum
        Dado que tenho o endereço da API
        Quando realizo uma requisição para cadastrar um usuário
        Então a API retornará as informações do usuário cadastrado