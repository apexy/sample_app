require 'spec_helper'

describe "StaticPages" do
  subject {page}

  describe "Home page" do
    before { visit root_path }

    it {should have_selector('h1', text:'Sample App')}
  end

  describe "Help page" do
    it "should have the h1 content 'Help'" do
      visit help_path
      page.should have_selector('h1', text:'Help')
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text:'Contact')
    end
  end

end
