# frozen_string_literal: true

require 'appium_lib'
require 'appium_capybara'
require 'capybara/cucumber'
require 'rspec'
require 'capybara/dsl'
require 'site_prism'
require 'toml-rb'
require 'pry'
require "allure-cucumber"

AllureCucumber.configure do |config|
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
end

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if text == 'Before hook'
    return text if text == 'After hook'

    "#{source.last.keyword}#{text}"
  end
end

def load_module(path)
  Dir[path].each { |file| require file }
end

caps = TomlRB.load_file(File.expand_path('../../config/appium.toml',
                                         __dir__))

load_module('./features/pages/*.rb')

Capybara.configure do |config|
  config.default_max_wait_time = 50
  config.default_driver = :appium
  config.default_selector = :id
  config.ignore_hidden_elements = false
  Capybara.register_driver(:appium) do |app|
    appium_lib_options = { server_url: 'http://localhost:4723/wd/hub',
                           export_session: true }
    all_options = {
      appium_lib: appium_lib_options,
      caps: caps['caps']
    }
    Appium::Capybara::Driver.new app, all_options
  end
end
