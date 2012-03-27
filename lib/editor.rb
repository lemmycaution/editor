require 'tinymce-rails'
require "editor/engine"

module Editor
  @@editables = ["page"]
  mattr_accessor :editables
  
  def self.setup
    yield self
  end
  
end
