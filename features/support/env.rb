require 'capybara/cucumber'
require 'rspec'
require 'capybara/dsl'
require_relative '../capybaraPOM/lib/bbc_site'

Capybara.register_driver(:chrome) do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = false
  config.default_max_wait_time = 10
  config.default_driver = :chrome
end

# world object is like the scope for the cucumber test and we can include modules in it to get access to all the methods inside of it
World(BbcSite)
