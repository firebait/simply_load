Module SimpleLoadHelper

  def simply_load(url, content, options={})
    options[:class] = "#{options[:class]} content_auto_load".strip
    options.merge!(:"data-href" => url)
    content_tag :div, content, options
  end

end