require 'spec_helper'

feature "deleteing books" do
  let!(:book) {Factory(:book, :name=> "this book")}

  before do
    visit '/'
    click_link book.name
  end

  scenario "should delete a book" do
    click_link "Burn the Book!"    
    page.should have_content("Burned that book, it was probably full of devil worship.")
    page.should_not have_content(book.name)
  end
end