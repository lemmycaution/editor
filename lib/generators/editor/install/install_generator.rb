module Editor
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
  
    def check_active_admin
      unless defined?(ActiveAdmin)
        puts "You need installed active admin to use editor gem!"
      end
    end
  
    def copy_initializers
      if defined?(ActiveAdmin)
        copy_file "editor.rb", "config/initializers/editor.rb"
      end
    end
    
    def add_scripts_into_active_admin
      if defined?(ActiveAdmin)
        content = <<-CONTENT
//= require editor

$(document).ready(function(){

	editor.init();

});        
        CONTENT
        inject_into_file "app/assets/javascripts/active_admin.js", :after => "//= require active_admin/base\n" do
          content
        end
      end
    end
    
    def add_styles_into_active_admin
      if defined?(ActiveAdmin)
        inject_into_file "app/assets/stylesheets/active_admin.css.scss", :after => "@import \"active_admin/base\";\n" do
          '@import "editor";'
        end
      end
    end
    
    def precompile_assets_on_production
      if defined?(ActiveAdmin)
        inject_into_file "config/environments/production.rb", :before => "end\n" do
          "\tconfig.assets.precompile += %w( tinymce/themes/advanced/skins/cirkuit/ui.css tinymce/themes/advanced/skins/cirkuit/content.css tinymce/themes/advanced/skins/cirkuit/dialog.css )\n"
        end
      end
    end
  
  end
end