require 'spec_helper'

feature "list jokes" do
  let!(:book) {Factory(:book)}
  let!(:joke) {Factory(:joke, :book => book)}

  before do
    visit '/'
  end

  scenario "jokes should show up on the book page" do
    click_link book.name
    page.should have_content("here's a joke")
  end

end