# coding: utf-8
require 'selenium-webdriver'
require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara/webkit'

RSpec.configure do |config|
  config.include Capybara::DSL
  profile = Selenium::WebDriver::Chrome::Profile.new
  #profile['general.useragent.override'] = "iphone"
  #profile = Selenium::WebDriver::Firefox::Profile.new
  Capybara.register_driver :selenium do |app|
    #Capybara::Selenium::Driver.new(app, :browser => :chrome,:profile => profile)
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
    #Capybara::Selenium::Driver.new(app, :browser => :firefox,:profile => profile)
  end 


  config.before(:all) do
    Capybara.default_wait_time = 10
    Capybara.javascript_driver = :webkit
    Capybara.current_driver = :selenium
    Capybara.current_session.driver.browser.manage.window.resize_to(1200, 900)
  end

  config.after(:all) do
  end 

  config.before(:all, selenium: true) do
    Capybara.current_driver = :selenium
  end 

  config.after(:all, selenium: true) do
    Capybara.use_default_driver
  end 
end

#Capybara.app_host = 'http://www.yahoo.co.jp'
Capybara.app_host = 'http://192.168.33.30'
