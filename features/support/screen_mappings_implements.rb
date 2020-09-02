# frozen_string_literal: true

require 'yaml'
require 'logger'

def get_screen_mappings
  # $platform = ENV['PLATFORM_NAME'].downcase
  # require 'pry'; binding.pry
  dir = "#{Dir.pwd}/features/elements/screen_mappings_fleury.yaml"
  screen_mappings = YAML.load_file(dir)
  @mappings = screen_mappings[:android]
end
