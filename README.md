# Holder.js for Rails

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

holder_rails 1.7.0 == Holder.js 1.7

## License

Released under the BSD 2-clause license. See LICENSE.txt for details.
