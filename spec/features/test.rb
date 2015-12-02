# coding: utf-8
require 'spec_helper'

describe "Sample" do
  it "test1" do
    visit '/'
    sleep 3
    click_link 'test.html'
    #window = page.driver.browser.window_handles()
    #page.driver.browser.switch_to.window(window[1])
    sleep 3
    expect(page).to have_content 'テスト1'
    #page.save_screenshot 'screenshot.png'
  end
  it "test3" do
    visit '/'
    sleep 3
    click_link 'test3.html'
    sleep 3
    expect(current_path).to eq '/test3.html'
  end
  
  it "test4" do
    visit '/'
    sleep 3
    click_link 'test4.html'
    window = page.driver.browser.window_handles()
    page.driver.browser.switch_to.window(window[1])
    sleep 3
    #page.save_screenshot 'screenshot.png'
    expect(page).to have_content('別Windowです')
    #p URI.parse(current_url)
    #expect(page).to have_content 'テスト1'
    #page.save_screenshot 'screenshot.png'
  end
end
