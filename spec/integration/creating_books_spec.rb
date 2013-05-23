require 'spec_helper'

feature "creating books" do
  before do
    visit '/'
    click_link "Create a New Book"
  end

  scenario "can create a new book" do
    fill_in "Name", :with => "Example book"
    fill_in "Description", :with => "Example description"
    click_button "Create Book"
    page.should have_content("Example book was created.")
  end

  scenario "cannot create a book with bad values" do
    fill_in "Name", :with => ""
    fill_in "Description", :with => ""
    click_button "Create Book"
    page.should have_content("Could not create book.")
    page.should have_content("Name can't be blank")
    page.should have_content("Description can't be blank")
  end
  
end