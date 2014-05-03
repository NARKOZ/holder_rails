require 'holder_rails'
require 'minitest/autorun'

class HolderRailsTest < ActionView::TestCase
  include HolderRails::Helpers

  test "size" do
    assert_equal '<img data-src="holder.js/100x100/text:100x100/" src="" />', holder_tag(100)
    assert_equal '<img data-src="holder.js/200x300/text:200x300/" src="" />', holder_tag('200x300')
    assert_equal '<img data-src="holder.js/100%x75/text:100%x75/" src="" />', holder_tag('100%x75')
  end

  test "text" do
    assert_equal '<img data-src="holder.js/200x300/text:Lorem ipsum/" src="" />', holder_tag('200x300', 'Lorem ipsum')
  end

  test "theme" do
    assert_equal '<img data-src="holder.js/200x300/text:Lorem ipsum/social" src="" />', holder_tag('200x300', 'Lorem ipsum', 'social')
  end

  test "html_options" do
    assert_equal '<img class="special" data-src="holder.js/500x800/text:Example text/gray" id="new" src="" />',
      holder_tag('500x800', 'Example text', 'gray', :id => 'new', :class => 'special')
  end
end
