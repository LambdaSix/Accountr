# Accountr

Quick utility library to grab information about an account
from minecraft's profile API.

## Installation

Add this line to your application's Gemfile:

    gem 'Accountr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Accountr

## Usage

    require 'mc-accountr'

    accountr = Accountr.new
    result = accountr.find_profiles ['Accounts','Names','Here']

## Contributing

1. Fork it ( http://github.com/LambdaSix/Accountr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
