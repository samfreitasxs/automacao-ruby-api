Quando('faço uma requisição GET para o servico Users') do
    @request_users = users.get_users
  end
  
  Entao('o serviço Users deve responder com {int}') do |status_code|
     expect(@request_users.code).to eq status_code
  end
  
  Entao('retorna a lista de usuarios') do
    print @request_users
  end