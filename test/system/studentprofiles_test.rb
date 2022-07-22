require "application_system_test_case"

class StudentprofilesTest < ApplicationSystemTestCase
  setup do
    @studentprofile = studentprofiles(:one)
  end

  test "visiting the index" do
    visit studentprofiles_url
    assert_selector "h1", text: "Studentprofiles"
  end

  test "should create studentprofile" do
    visit studentprofiles_url
    click_on "New studentprofile"

    fill_in "Image", with: @studentprofile.image
    click_on "Create Studentprofile"

    assert_text "Studentprofile was successfully created"
    click_on "Back"
  end

  test "should update Studentprofile" do
    visit studentprofile_url(@studentprofile)
    click_on "Edit this studentprofile", match: :first

    fill_in "Image", with: @studentprofile.image
    click_on "Update Studentprofile"

    assert_text "Studentprofile was successfully updated"
    click_on "Back"
  end

  test "should destroy Studentprofile" do
    visit studentprofile_url(@studentprofile)
    click_on "Destroy this studentprofile", match: :first

    assert_text "Studentprofile was successfully destroyed"
  end
end
