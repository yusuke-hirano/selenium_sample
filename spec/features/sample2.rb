# coding: utf-8
require 'spec_helper'

describe "Sample" do
  it "Samble" do
    visit '/newtab.html'
    click_link 'test'
    window = page.driver.browser.window_handles()
    page.driver.browser.switch_to.window(window[1])
    click_link 'test2'
    pp "test2のはず"
    pp page.source
    sleep 3
    window = page.driver.browser.window_handles()
    page.driver.browser.switch_to.window(window[2])
    pp "test3のはず"
    pp page.source
    sleep 3
    page.driver.browser.switch_to.window(window[0])
    pp "testのはず"
    pp page.source
    sleep 3
  end
end
