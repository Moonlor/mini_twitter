require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Mini Twitter'" do
      visit '/static_pages/home'
      expect(page).to have_content('Mini Twitter')
    end 
    
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Mini Twitter App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
	  end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end

  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("About Us")
    end

  end

end
