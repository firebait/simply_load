require "simply_load/version"

module SimplyLoad
  
  def simply_load(url, content_or_options_with_block = nil, options = {}, escape = true, &block)
    options = content_or_options_with_block if content_or_options_with_block.is_a?(Hash) and block_given?
    options[:class] = "#{options[:class]} simply_load".strip
    options.merge!(:"data-href" => url)
    if block_given?
      content_tag :div, capture(&block), options, escape
    else
      content_tag :div, content_or_options_with_block, options, escape
    end
  end    

end

ActionView::Base.send(:include, SimplyLoad)