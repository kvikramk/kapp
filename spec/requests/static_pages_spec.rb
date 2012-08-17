require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end
  
  describe "Help Page" do
    it "shoud have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
  
  describe "About Page" do
    it "should have content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end
end