# frozen_string_literal: true

class Filmsget
  def films_api_get
    HTTParty.get(
      'https://swapi.dev/api/films/',
      headers: {
        'Content-Type' => 'application/json'
      }
    )
  end
end
