require "genial/version"
require "httparty"

module Genial
  class Currency
    include HTTParty
    base_uri "http://api.xgeek.com.br/taxa-cambio"

    def self.find(code)
      get("/currency?code=#{code}").parsed_response["buying_rate"]
    end

    def self.dolar
      get("/currency?code=USD").parsed_response["buying_rate"]
    end

    def self.euro
      get("/currency?code=EUR").parsed_response["buying_rate"]
    end

    def self.pound
      get("/currency?code=GBP").parsed_response["buying_rate"]
    end

    def self.bitcoin
      endpoint = "http://api.promasters.net.br/cotacao/v1/valores?moedas=BTC"
      get(endpoint)["valores"]["BTC"]["valor"]
    end
  end
end
