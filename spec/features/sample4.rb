# coding: utf-8
require 'spec_helper'

describe "Sample" do
  it "Samble" do
    visit '/checkbox.html'
    check 'hoge'
    sleep 3
  end
end
