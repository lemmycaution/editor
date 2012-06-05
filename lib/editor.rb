require 'tinymce-rails'
require "editor/engine"

module Editor
  @@editables = []
  mattr_accessor :editables
  
  @@use_suffix = true
  mattr_accessor :use_suffix
  
  @@has_visual_editor = true
  mattr_accessor :has_visual_editor  
  
  @@locales_count = true
  mattr_accessor :locales_count  
  
  def self.setup
    yield self
  end
  
end
