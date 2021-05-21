# frozen_string_literal: true

class Planetsget
  include HTTParty

  def planets_api_get
    HTTParty.get('http://swapi.dev/api/planets/')
  end

  def planets_api_new_get
    HTTParty.get("http://swapi.dev/api/planets/#{$newcount}")
  end
end
