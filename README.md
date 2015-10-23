# Genial
[![Gem Version](https://badge.fury.io/rb/genial.svg)](https://badge.fury.io/rb/genial)
[![Build Status](https://travis-ci.org/gurgelrenan/genial.svg)](https://travis-ci.org/gurgelrenan/genial)
[![Code Climate](https://codeclimate.com/github/gurgelrenan/genial/badges/gpa.svg)](https://codeclimate.com/github/gurgelrenan/genial)
[![Dependency Status](https://gemnasium.com/gurgelrenan/genial.svg)](https://gemnasium.com/gurgelrenan/genial)

Genial, is a simples gem that allows you to check the current value of a currency in [Brazilian Real](https://en.wikipedia.org/wiki/Brazilian_real). This gem has also a way to convert values.

All this data is based on a API provided by [xgeek](http://xgeek.com.br/rest-api-cotacao-conversao-moedas/) that gets data from [Central Bank of Brazil](https://en.wikipedia.org/wiki/Central_Bank_of_Brazil) and this data is updated during the week (working days) at 2:00 p.m (GMT -3).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'genial'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install genial

## Usage

The usage is pretty simple. To know the value of $1 in R$
```ruby
Genial::Currency.dollar
# => 3.79
```

Main currencies:

```ruby
Genial::Currency.dollar

Genial::Currency.euro

Genial::Currency.pound
```

To convert a value from one currency to another  is also pretty simple. Just pass the following params like this:
```ruby
Genial::Currency.convert("USD","BRL","30.99")
# => 116.96

```

We can get the value of any currency in the world. Based on [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217), we just need to pass the country code to method `find` and we are done. Ex: to get `Canadian dollar` value:

```ruby
Genial::Currency.find("CAD")
# => 2.97
```

To see a list with all currency codes access this [link](https://en.wikipedia.org/wiki/ISO_4217#Active_codes)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/gurgelrenan/genial/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
