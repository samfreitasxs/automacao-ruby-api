#language: pt

@users
Funcionalidade: Users
    validar operações da API Users

    @get_users
    Cenario: Validar GET API Users
        Quando faço uma requisição GET para o servico Users
        Entao o serviço Users deve responder com 200
        E retorna a lista de usuarios