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
end

describe "Sample" do
  it "test3" do
    visit '/'
    sleep 3
    click_link 'test3.html'
    #window = page.driver.browser.window_handles()
    #page.driver.browser.switch_to.window(window[1])
    sleep 3
    p current_path.to_s
    #p expect(current_path).to eq '/'
    p URI.parse(current_url)
    #expect(page).to have_content 'テスト1'
    #page.save_screenshot 'screenshot.png'
  end
end

