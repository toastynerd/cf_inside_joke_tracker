require 'spec_helper'

feature "creat an in the know peep" do
  scenario "can create an in the know peep" do
    visit '/'
    click_link "In the know peeps"
    click_link "New Peep"
    fill_in "Name", :with => "Douglas Adams"
    click_button "Create In the know peep"

    page.should have_content("You just created a new peep.")
  end
end
