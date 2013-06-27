require 'spec_helper'
require 'capybara/rails'
require 'capybara/rails'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/static_pages/home'
      response.status.should be(200)
    end
  end

  describe 'home page' do
  	it 'should have the content' do
  		visit '/static_pages/home'
  		page.should have_content('sample app')
  	end
  	
  	it 'should have the right title' do
  		visit '/static_pages/home' 
  		page.should have_selector('title',
  			:text => "Ruby on Rails Tutorial Sample App | Home")
  	end

  end

  describe 'Help page' do
  	it 'should have the content' do
  		visit '/static_pages/help'
  		page.should have_content('help')
  	end

  	
  	it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe 'about page' do
  	it "should have the content 'about us'" do
  		visit '/static_pages/about'
  		page.should	 have_content ('About Us')
  	end

  	it "should have the title 'Help'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | About Us")
    end

  end

end
