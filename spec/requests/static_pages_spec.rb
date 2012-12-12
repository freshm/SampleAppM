require 'spec_helper'

describe "StaticPages" do
  describe "Static Pages" do
    
    subject { page }
    
    shared_examples_for "all static pages" do
      it { should have_selector('h1', text: heading) }
      it { should have_selector('title', text: full_title(page_title)) }
    end
    
    describe "Home Page" do
      before {visit root_path}
      
      let(:heading) { 'Sample App' }
      let(:page_title) { '' }
      
      it "should not have a custom page title" do
        page.should_not have_selector('title', text: '| Home')
      end
    end
    
    describe "Help Page" do
      before { visit help_path }
      it "should have the content 'Help'" do
        page.should have_selector('h1', :text => 'Help')
      end
      
      it "should have the correct title" do
        page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
      end
    end
    
    describe "About Page" do
      before { visit about_path }
      it "should have the content 'About us'" do
        page.should have_selector('h1', :text => 'About us')
      end
      
      it "should have the correct title" do
        page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
      end
    end
    
    describe "Contact Page" do
      before { visit contact_path }
      it "should have the content 'Contact'" do
        page.should have_selector('h1', :text => 'Contact')
      end
      
      it "should have the correct title" do
        page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
      end
    end
  end
end
