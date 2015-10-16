require 'spec_helper'

RSpec.describe Genial do
  it 'has a version number' do
    expect(Genial::VERSION).not_to be nil
  end

  it 'returns a 200 status in a currency method request' do
    expect(HTTParty.get("http://api.xgeek.com.br/taxa-cambio/currency?code=USD").response.code).to eq("200")
  end
end
