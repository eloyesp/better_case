[![Gem Version](http://img.shields.io/gem/v/better_case.svg)](http://badge.fury.io/rb/better_case)
[![Code Climate](http://img.shields.io/codeclimate/github/eloyesp/better_case.svg)](https://codeclimate.com/github/eloyesp/better_case)
[![Build Status](http://img.shields.io/travis/eloyesp/better_case.svg)](https://travis-ci.org/eloyesp/better_case)
[![Dependency Status](http://img.shields.io/gemnasium/eloyesp/better_case.svg)](https://gemnasium.com/eloyesp/better_case)
[![License](https://img.shields.io/badge/license-AGPL-663266.svg)](https://gnu.org/licenses/agpl)

# BetterCase

Better Case uses refinements to implement ´===´ in core clases to enable
you to use case for cool stuff.

Array use ´include?´, Symbol use ´respond_to?´ to make duck typing.

To use it simply require and add `using BetterCase` on your module/class
the rest of the code should never notice the change.

## Installation

    $ gem install better_case

## Usage

```ruby
module Symbols

  using BetterCase # enabled only on request

  def a_method_that_duck_type object
    case object
    when :to_time
      # do something with it
    when :concat
      # other stuff
    end
  end

  def valid_option? option
    case option
    when [:a, :b] then true
    else false
    end
  end

end
```

## Road Map

Well, I coudn't find any good feature to use for Hash, so I welcome any
ideas.

## Contributing

1. Fork it ( https://github.com/eloyesp/better_case/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
