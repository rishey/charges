require 'spec_helper'


describe "the rendering of charges index", :type => :feature do

  it "renders charges index" do
    visit '/charges'
    expect(page).to have_content 'Success'

  end

  it "contains 3 tables Failed, Disputed, and Successful Charges" do
    visit '/charges'
    page.should have_css('table.failed')
    page.should have_css('table.disputed')
    page.should have_css('table.successful')
  end

  it "contains five table rows in the Failed Charges table" do
    visit '/charges'
    page.should have_selector('tr.failed_charge', :count => 5)
  end

  it "contains ten table rows in the Disputed Charges table" do
    visit '/charges'
    page.should have_selector('tr.disputed_charge', :count => 5)
  end

  it "contains ten table rows in the Successful Charges table" do
    visit '/charges'
    page.should have_selector('tr.successful_charge', :count => 10)
  end

end




# this is good     page.should have_css('table.failed')
