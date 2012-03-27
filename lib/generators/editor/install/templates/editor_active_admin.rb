if defined?(ActiveAdmin)
  ActiveAdmin.setup do |config|
    config.register_javascript 'ace/ace.js'  
    config.register_javascript 'ace/mode-html.js'    
    config.register_javascript 'ace/theme-tomorrow_night.js'
  end
end