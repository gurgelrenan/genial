require "genial/version"
require "httparty"

module Genial
  class Currency
    include HTTParty
    base_uri "http://api.xgeek.com.br/taxa-cambio"

    def self.dolar
      get("/currency?code=USD").parsed_response["buying_rate"]
    end
  end

end
