require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
    before {visit root_path}
    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before {visit help_path}
    it "should have the h1 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    before {visit about_path}
    it "should have the h1 'About Us'" do
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact page" do
    before {visit contact_path}
    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end