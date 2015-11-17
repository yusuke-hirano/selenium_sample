# coding: utf-8
require 'spec_helper'

describe "Sample" do
  it "Samble" do
    visit '/bootstrap/index.html'
    page.execute_script "window.scrollTo(0,100000)"
    sleep 3
    click_link 'test'
    sleep 3
  end
end
