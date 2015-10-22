module HolderRails
  module Helpers
    def holder_tag(size, text='', theme=nil, html_options={}, holder_options={})
      size = "#{size}x#{size}" unless size =~ /\A\d+%?x\d+\z/
      holder = "holder.js/#{size}?text=#{text}&theme=#{theme}"
      holder_options.each do |key, value|
        holder += "&#{key}=#{value}"
      end
      options = {:src => '', :data => {:src => holder}}
      options = options.merge(html_options)

      tag :img, options
    end
  end
end
