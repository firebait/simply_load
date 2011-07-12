class SimplyLoadGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
      
  def generate_javascript
    copy_file "simply_load.js", (Rails::VERSION::STRING.starts_with?("3.1") ? "app/assets/javascripts/simply_load.js" : "public/javascripts/simply_load.js")
  end
      
end
