require 'holder_rails'
require 'minitest/autorun'

class HolderRailsTest < ActionView::TestCase
  include HolderRails::Helpers

  test "size" do
    assert_dom_equal '<img data-src="holder.js/100x100?" src="" />', holder_tag(100)
    assert_dom_equal '<img data-src="holder.js/200x300?" src="" />', holder_tag('200x300')
    assert_dom_equal '<img data-src="holder.js/100px75?" src="" />', holder_tag('100px75')
  end

  test "text" do
    assert_dom_equal '<img data-src="holder.js/200x300?text=Lorem ipsum" src="" />', holder_tag('200x300', 'Lorem ipsum')
  end

  test "theme" do
    assert_dom_equal '<img data-src="holder.js/200x300?text=Lorem ipsum&amp;theme=social" src="" />', holder_tag('200x300', 'Lorem ipsum', 'social')
  end

  test "html_options" do
    assert_dom_equal '<img class="special" data-src="holder.js/500x800?text=Example text&amp;theme=gray" id="new" src="" />',
      holder_tag('500x800', 'Example text', 'gray', id: 'new', class: 'special')
  end

  test "holder_options" do
    assert_dom_equal '<img class="special" data-src="holder.js/500x800?font=Helvetica&amp;text=Example text&amp;theme=gray" id="new" src="" />',
      holder_tag('500x800', 'Example text', 'gray', { id: 'new', class: 'special' }, { font: 'Helvetica' })
  end
end
