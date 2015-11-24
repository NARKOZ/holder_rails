module HolderRails
  module Helpers
    def holder_tag(size, text='', theme=nil, html_options={}, holder_options={})
      size = "#{size}x#{size}" unless size =~ /\A\d+%?x\d+\z/

      holder_options[:text] = text unless text.to_s.empty?
      holder_options[:theme] = theme unless theme.nil?
      holder_options = holder_options.map {|e| e.join('=') }.join('&')

      options = { src: '', data: { src: "holder.js/#{size}?#{holder_options}" }}
      options = options.merge(html_options)

      tag :img, options
    end
  end
end
