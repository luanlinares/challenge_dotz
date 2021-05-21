# frozen_string_literal: true

Dado('que possuo uma consulta para armazenar o valor do count') do
  @response = @planets.planets_api_get
  @count = @response['count']
end

Quando('realizar uma nova requisição adicionando {int} ao count da API') do |int|
  $newcount = @count + int
  @novocount = @planets.planets_api_new_get
end

Então('o status code deve ser de erro') do
  expect(@novocount.code).to eql 404
  puts "O statuscode é #{@novocount.code}"
end

Então('devo visualizar a mensagem de erro') do
  expect(@novocount['detail']).to eql 'Not found'
  puts "A mensagem de erro é #{@novocount}"
end
