require 'securerandom'
require 'capybara/dsl'
require 'pry'
require 'open3'
# require 'cnvrg'
# require_relative 'home_page'


Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
RSpec.configure do |config|
  # config.include HomePage, type: :feature
  config.include Capybara::DSL
  
end
