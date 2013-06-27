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
  end

  describe 'Help page' do
  	it 'should have the content' do
  		visit '/static_pages/help'
  		page.should have_content('help')
  	end
  end
  


end
