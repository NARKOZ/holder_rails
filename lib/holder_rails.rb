require "holder_rails/version"
require "holder_rails/helpers"
require "rails/engine"
require "action_view"

module HolderRails
  class Engine < ::Rails::Engine; end
end

ActionView::Base.send :include, HolderRails::Helpers
