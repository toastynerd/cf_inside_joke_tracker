require 'spec_helper'

feature "editing jokes" do
  let!(:book) {Factory(:book)}
  let!(:joke) {Factory(:joke, :book => book)}

  before do
    visit '/'
    click_link book.name
    click_link joke.name
    click_link "Edit Joke"
  end
    
  scenario "editing a joke" do
    fill_in "Name", :with => "something else"
    click_button "Update Joke"
    page.should have_content("Joke has been updated.")
    page.should have_content("something else")
    page.should_not have_content(joke.name)

  end
end