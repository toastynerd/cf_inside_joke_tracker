require 'spec_helper'

feature "listing books" do
 let!(:book) {Factory(:book, :name => "first book")}

  before do
    visit '/'
  end

  scenario "list all book on the index page" do
    page.should have_content("first book")
  end

  scenario "should be links to the show for books" do
    click_link book.name
    page.should have_content(book.name)
    page.should have_content(book.description)
  end
end