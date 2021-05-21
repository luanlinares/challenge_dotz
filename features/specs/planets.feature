  #language: pt
  Funcionalidade: Consultar Films
  Como uma aplicação
  Eu quero fazer alterações e consultas na API de Planetas
  Para visualizar as informações e status de resposta
  
  
  @consulta_planets
  Cenario: Consulta Planets - Valor alterado
    Dado que possuo uma consulta para armazenar o valor do count
    Quando realizar uma nova requisição adicionando 1 ao count da API
    Então o status code deve ser de erro
    E devo visualizar a mensagem de erro