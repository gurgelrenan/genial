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

    def self.convert(from, to, value)
      convert_response(get("/convert?from=#{from}&to=#{to}&value=#{value}"))
    end

    private

    def self.parse_response(response)
      response.parsed_response["buying_rate"].to_f.round(2)
    end

    def self.convert_response(response)
      case response.code
      when 200
        response.parsed_response["result"].to_f.round(2)
      when 404
        puts "moeda(s) não encontrada(s)"
      when 400
        puts "solicitação inválida"
      when 500
        puts "erro interno."
      end
    end
  end
end
