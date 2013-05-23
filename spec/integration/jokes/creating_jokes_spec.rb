require 'spec_helper'

feature "create a joke" do
  let!(:book) {Factory(:book, :name => "some book")}

  before do
    visit '/'
    click_link book.name
  end

  scenario "creating a new joke" do
    click_link "Create a New Joke"    
    fill_in "Name", :with => "42"
    fill_in "Meaning", :with => "The answer to life, the universe and everything"
    click_button "Create Joke"
    page.should have_content("Joke has been created.")
  end
end