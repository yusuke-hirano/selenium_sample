# coding: utf-8
require 'headless'
require 'selenium-webdriver'
require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara/webkit'

RSpec.configure do |config|
  config.include Capybara::DSL
  profile = Selenium::WebDriver::Firefox::Profile.new
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox,:profile => profile)
  end 


  config.before(:all) do
    @headless = Headless.new
    @headless.start
    Capybara.default_wait_time = 10
    Capybara.javascript_driver = :webkit
    Capybara.current_driver = :selenium
    Capybara.current_session.driver.browser.manage.window.resize_to(1200, 900)
  end

  config.after(:all) do
    @headless.destroy
  end 

  config.before(:all, selenium: true) do
    Capybara.current_driver = :selenium
  end 

  config.after(:all, selenium: true) do
    Capybara.use_default_driver
  end 
end

Capybara.app_host = 'http://yahoo.co.jp'
