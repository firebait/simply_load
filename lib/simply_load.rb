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

  def simply_load_timed(t, unit, url, content_or_options_with_block = nil, options = {}, escape = true, &block)
    timer = t.send(unit).seconds * 1000
    options = content_or_options_with_block if content_or_options_with_block.is_a?(Hash) and block_given?
    options[:class] = "#{options[:class]} simply_load simply_load_timed".strip
    options.merge!(:"data-href" => url, :"data-timer" => timer)
    if block_given?
      content_tag :div, capture(&block), options, escape
    else
      content_tag :div, content_or_options_with_block, options, escape
    end
  end

  def method_missing(method, *args, &block)
    return simply_load_timed($1.to_i, $2.to_s, *args) if method =~ /^simply_load_every_+(.*\d)+_+(second|seconds|minute|minutes|hour|hours)$/  # Call has_role? with is_role_name?
    super
  end  

end

ActionView::Base.send(:include, SimplyLoad)