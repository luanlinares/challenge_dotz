# frozen_string_literal: true

Quando('solicitado uma requisição de consulta da api {string}') do |_string|
  @result = @films.films_api_get
  qtde = @result['results'].count
  qtde.times do |i|
    puts @result['results'][i]['title']
  end
end

Então('o status code deve ser {string}') do |_string|
  expect(@result.code).to eq 200
  puts "O Código de retorno da requisição é: #{@result.code}"
end

Então('deve ser verificado os os títulos dos filmes da api {string}') do |_string|
  expect(@result['results'][0]['title']).to eq 'A New Hope'
  expect(@result['results'][1]['title']).to eq 'The Empire Strikes Back'
  expect(@result['results'][2]['title']).to eq 'Return of the Jedi'
  expect(@result['results'][3]['title']).to eq 'The Phantom Menace'
  expect(@result['results'][4]['title']).to eq 'Attack of the Clones'
  expect(@result['results'][5]['title']).to eq 'Revenge of the Sith'
end
