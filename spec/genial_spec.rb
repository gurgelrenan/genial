require 'spec_helper'

describe Genial do
  it 'has a version number' do
    expect(Genial::VERSION).not_to be nil
  end

  it 'return value of dolar' do
    expect(Genial::Currency.dolar).to be_instance_of(String)
  end
end
