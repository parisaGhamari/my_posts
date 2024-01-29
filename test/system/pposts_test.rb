require1 = require "application_system_test_case"

class PpostsTest < ApplicationSystemTestCase
  setup do
    @ppost = pposts(:one)
  end

  test "visiting the index" do
    visit pposts_url
    assert_selector "h1", text: "Pposts"
  end

  test "should create ppost" do
    visit pposts_url
    click_on "New ppost"

    fill_in "Body", with: @ppost.body
    fill_in "Name", with: @ppost.name
    fill_in "Title", with: @ppost.title
    click_on "Create Ppost"

    assert_text "Ppost was successfully created"
    click_on "Back"
  end

  test "should update Ppost" do
    visit ppost_url(@ppost)
    click_on "Edit this ppost", match: :first

    fill_in "Body", with: @ppost.body
    fill_in "Name", with: @ppost.name
    fill_in "Title", with: @ppost.title
    click_on "Update Ppost"

    assert_text "Ppost was successfully updated"
    click_on "Back"
  end

  test "should destroy Ppost" do
    visit ppost_url(@ppost)
    click_on "Destroy this ppost", match: :first

    assert_text "Ppost was successfully destroyed"
  end
end
