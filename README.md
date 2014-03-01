# Holder.js for Rails

[![Build Status](https://travis-ci.org/NARKOZ/holder_rails.png)](https://travis-ci.org/NARKOZ/holder_rails)
[![Gem Version](https://fury-badge.herokuapp.com/rb/holder_rails.png)](http://badge.fury.io/rb/holder_rails)

Provides Holder.js to render image placeholders entirely on the client side.

## Installation

Add to your Gemfile:

```ruby
gem 'holder_rails'
```

and run:

```sh
bundle install
```

## Usage

Add to your JavaScript manifest file:

```js
//= require holder
```

And if you're using [turbolinks](https://github.com/rails/turbolinks)
don't forget to run `Holder` after `page:change` event:

```coffee
$(document).bind 'page:change', ->
  Holder.run()
```

You can use `holder_tag` helper in your views:

```ruby
holder_tag 100
# => <img data-src="holder.js/100x100/text:100x100/" src="" />

holder_tag '200x300'
# => <img data-src="holder.js/200x300/text:200x300/" src="" />

holder_tag '200x300', 'Lorem ipsum'
# => <img data-src="holder.js/200x300/text:Lorem ipsum/" src="" />

holder_tag '200x300', 'Lorem ipsum', 'social'
# => <img data-src="holder.js/200x300/text:Lorem ipsum/social" src="" />

holder_tag '500x800', 'Example text', 'gray', :id => 'new', :class => 'special'
# => <img class="special" data-src="holder.js/500x800/text:Example text/gray" id="new" src="" />
```

For more information, check out [holder readme](https://github.com/imsky/holder#readme).

## Versioning

holder_rails X.Y.Z == Holder.js X.Y.Z

## License

Released under the BSD 2-clause license. See LICENSE.txt for details.
