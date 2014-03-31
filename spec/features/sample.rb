# coding: utf-8
require 'spec_helper'

describe "Sample" do
  it "Samble" do
    visit '/'
    page.save_screenshot "screenshot/sample.png"
    expect(page).to have_title(/\AYahoo! JAPAN\z/)
    puts page.title
    fill_in("srchtxt",:with => "kccs")
    click_button "検索"
    puts page.title
    all(:link_or_button,"条件指定")[1].click
    choose "f0vst1"
    check "WOmh4"
    page.save_screenshot "screenshot/sample2.png"
    all(:button,"検索")[1].click
    page.save_screenshot "screenshot/sample3.png"
    visit '/'
    click_link "プライバシーポリシー"
    page.save_screenshot "screenshot/sample4.png"
    visit '/'
    page.save_screenshot "screenshot/sample5.png"
    all(:link_or_button,"ショッピング")[1].click
    page.save_screenshot "screenshot/sample6.png"
    fill_in("YshHdAssistWord",:with => "インナー")
    select('メンズファッション',:from => "cid")
    click_button "SearchSubmit"
    page.save_screenshot "screenshot/sample7.png"
  end
end
