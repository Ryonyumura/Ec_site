require "rails_helper"

RSpec.describe "Users", :type => :system do
  before do
    driven_by(:rack_test)
  end

  it "enables me to create widgets" do
    visit "/widgets/new"

    fill_in "Name", :with => "My Widget"
    click_button "Create Widget"

    expect(page).to have_text("Widget was successfully created.")
  end
end