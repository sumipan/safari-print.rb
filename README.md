# Safari::Print

Automate printing with Safari

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'safari-print', :git => 'https://github.com/sumipan/safari-print.rb.git', :branch => 'master'
```

And then execute:

    $ bundle

## Usage

```ruby
require 'safari/print'

Safari::Print.print do
  hello = 'Hello, world'
  erb = ERB.new('<%= hello %>')
  erb.result(binding)
end
```

## Contributing

1. Fork it ( https://github.com/sumipan/safari-print.rb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
