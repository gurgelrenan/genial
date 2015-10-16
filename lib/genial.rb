require "genial/version"
require "httparty"

module Genial
  class Currency
    include HTTParty
    base_uri "http://api.xgeek.com.br/taxa-cambio"

    def self.find(code)
      parse_response(get("/currency?code=#{code}"))
    end

    def self.dollar
      parse_response(get("/currency?code=USD"))
    end

    def self.euro
      parse_response(get("/currency?code=EUR"))
    end

    def self.pound
      parse_response(get("/currency?code=GBP"))
    end

    private

    def self.parse_response(response)
      response.parsed_response["buying_rate"].to_f.round(2)
    end
  end
end
