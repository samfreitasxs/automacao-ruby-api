#language: pt

@users
Funcionalidade: Users
    validar operações da API Users

    @get_users
    Cenario: Validar GET API Users
        Quando faço uma requisição GET para o servico Users
        Entao o serviço Users deve responder com 200
        E retorna a lista de usuarios


    @get_user
    Cenario: Validar GET API Users
        Quando faço uma requisição GET para o servico Users passando id
        Entao o serviço Users deve responder com 200
        E retorna o usuario


    @post_user
    Cenario: Validar POST API Users
        Quando faço uma requisição POST para o servico Users
        Entao o serviço Users deve responder com 200
        E retorna o usuario criado