# coding: utf-8
require 'selenium-webdriver'
require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara/webkit'

RSpec.configure do |config|
  config.include Capybara::DSL
  #profile = Selenium::WebDriver::Chrome::Profile.new
  #profile['general.useragent.override'] = "iphone"
  #profile = Selenium::WebDriver::Firefox::Profile.new

  Capybara.register_driver :selenium do |app|
    #Capybara::Selenium::Driver.new(app, :browser => :chrome,:profile => profile)
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
    #Capybara::Selenium::Driver.new(app, :browser => :selenium)
    #Capybara::Selenium::Driver.new(app, :browser => :firefox,:profile => profile)
    #Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end

end

Capybara.configure do |config|
  #config.default_wait_time = 10
  config.javascript_driver = :webkit
  #config.current_driver = :selenium
  config.default_driver = :selenium
  config.app_host = 'http://192.168.33.30'
  config.current_session.driver.browser.manage.window.resize_to(1200, 900)
end

#Capybara.app_host = 'http://www.yahoo.co.jp'
#Capybara.app_host = 'http://192.168.33.30'
