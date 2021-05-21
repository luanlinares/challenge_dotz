#language: pt

Funcionalidade: Consultar Films
  Como uma aplicação
  Eu quero realizar uma consulta de dados da API de Filmes
  Para visualizar as informações de títulos

  @consulta_films
  Cenario: Consulta API Films
    Quando solicitado uma requisição de consulta da api "films"
    Então o status code deve ser "200"
    E deve ser verificado os os títulos dos filmes da api "films"

  