require 'spec_helper'


describe "Static Pages" do

   let(:base_title) {"Ruby on Rails Tutorial Sample2 App Home"}

  describe "Home Page" do

    it "should have the content 'Home'" do
     visit '/static_pages/home'
     expect(page).to have_content('Home')
    end

     it "should have the title 'Home'"do
     visit '/static_pages/home'
     page.should have_selector('title', :text =>"Ruby on rails | Home")
    end
   end

describe "Help page" do

  it "should have the content 'Help'" do
   visit '/static_pages/help'
   expect(page).to have_content('Help')
end
    it "should have the title 'Help'" do
   visit '/static_pages/help'
   page.should have_selector('title', :text => "Help")
  end
end

describe "About page" do

  it "should have the content 'About Us'" do
  visit '/static_pages/about'
  expect(page).to have_content('About Us')
end

  it "should have the title 'About Us'" do
  visit '/static_pages/about'
  page.should have_selector('title', :text =>"About Us")
  end
end

describe "Contacts page" do
  it "should have the content 'Contacts'" do
  visit '/static_pages/contacts'
  expect(page).to have_content('Contacts')
end
  it "should have the title 'Contacts'" do
  visit '/static_pages/contacts'
  page.should have_selector('title', :text => "Contacts")
 end
end
end

