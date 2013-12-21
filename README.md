# Uy::Id

<a href="http://www.omniref.com/ruby/gems/uy-id"><img src="http://assets2.omniref.com/assets/logo-1e25ba89780a42da4556dd96c03ac954.png" height="18" width="75"></a>

This gem includes the necessary helper methods to validate Uruguayan identification numbers ("Cédula de identidad").

## Installation

Add this line to your application's Gemfile:

    gem 'uy-id'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uy-id

## Usage

```ruby
require 'uy/id'

# to validate an ID:
Uy::Id.new('94475265').valid?
# => true

# to generate valid ID for testing purposes:
Uy::Id.new.id
# => "63228586"

# note that ID numbers lower than 1000000 must contain the trailing zeros
# this limitation might change in the future with the introduction of sanitizing features
Uy::Id.new('1234561').valid? # => false
Uy::Id.new('01234561').valid? # => true
```

## Contributing

If you want to contribute to this project, just fork it, make your changes, run the tests and create a pull request. Also, feel free to report issues on the [issues section](issues).

## Credits

Thanks to @cschmeichel for facilitating the algorithms!
