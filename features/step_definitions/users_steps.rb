Quando('faço uma requisição GET para o servico Users') do
    @request_users = users.get_users
  end
  
  Entao('o serviço Users deve responder com {int}') do |status_code|
     expect(@request_users.code).to eq status_code
  end
  
  Entao('retorna a lista de usuarios') do
    expect(@request_users.response.code).not_to be_empty
  end


  Quando('faço uma requisição GET para o servico Users passando id') do
    @id=1
    @request_users = users.get_user(@id)
    print @request_users
  end
  
  Entao('retorna o usuario') do
    pending # Write code here that turns the phrase above into concrete actions
  end