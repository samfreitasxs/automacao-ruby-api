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
  @id = 1
  @request_users = users.get_user(@id)
end

Entao('retorna o usuario') do
  expect(@request_users.parsed_response['id']).to eql @id
  print @id
end

Quando('faço uma requisição POST para o servico Users') do
  @payload_users = build(:user).user_hash
  @request_users = users.post_users(@payload_users)
end

Entao('retorna o usuario criado') do
  expect(@request_users['id']).to eql @payload_users[:id]
  # #expect(@request_users['UserName']).to eql @payload_users[:UserName]
  # #expect(@request_users['Password'].to_i).to eql @payload_users[:Password]
end
