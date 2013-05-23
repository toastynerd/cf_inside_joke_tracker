require 'spec_helper'

feature "editing books" do
  let!(:book) {Factory(:book, :name=> "example book")}
  before do
    visit '/'
    click_link book.name
    click_link "Edit Book"
  end

  scenario "editing the book info" do
    fill_in "Name", :with => "some other book"
    click_button "Update Book"    
    page.should have_content("Book has been updated.")
  end
end