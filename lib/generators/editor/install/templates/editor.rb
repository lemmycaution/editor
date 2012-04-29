Editor.setup do |config|
  
  # add your models which you want to convert text areas into wyswyg|code editor
  # add your models to use editor with
  config.editables = ["page"]
  
  # adds _body suffix to selectors
  config.use_suffix = true
  
end