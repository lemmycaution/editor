require 'tinymce-rails'
require "editor/engine"

module Editor
  @@editables = []
  mattr_accessor :editables
  
  @@use_suffix = true
  mattr_accessor :use_suffix
  
  def self.setup
    yield self
  end
  
end
