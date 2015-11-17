# coding: utf-8
require 'spec_helper'

describe "Sample" do
  it "Samble" do
    visit '/'
    sleep 3
    click_link 'メール'
    #window = page.driver.browser.window_handles()
    #page.driver.browser.switch_to.window(window[1])
    sleep 3
    fill_in 'username', with: 'u_suke123jp'
    fill_in 'passwd', with: 'Hjbe&#?&'
    #expect(page).to have_content '俺は豚だよ'
    click_button '.save'
    sleep 3
    page.save_screenshot 'screenshot.png'
  end
end
