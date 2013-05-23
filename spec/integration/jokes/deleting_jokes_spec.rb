require 'spec_helper'

feature "deleting jokes" do
  let!(:book) {Factory(:book)}
  let!(:joke) {Factory(:joke, :book => book)}

  before do
    visit '/'
    click_link book.name
    click_link joke.name
  end

  scenario "deleting a joke from a ticket" do
    click_link "Delete Joke"
    page.should have_content("Joke has been deleted.")

    visit '/'
    click_link book.name
    page.should_not have_content(joke.name)
  end
end