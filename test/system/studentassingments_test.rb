require "application_system_test_case"

class StudentassingmentsTest < ApplicationSystemTestCase
  setup do
    @studentassingment = studentassingments(:one)
  end

  test "visiting the index" do
    visit studentassingments_url
    assert_selector "h1", text: "Studentassingments"
  end

  test "should create studentassingment" do
    visit studentassingments_url
    click_on "New studentassingment"

    fill_in "File", with: @studentassingment.file
    click_on "Create Studentassingment"

    assert_text "Studentassingment was successfully created"
    click_on "Back"
  end

  test "should update Studentassingment" do
    visit studentassingment_url(@studentassingment)
    click_on "Edit this studentassingment", match: :first

    fill_in "File", with: @studentassingment.file
    click_on "Update Studentassingment"

    assert_text "Studentassingment was successfully updated"
    click_on "Back"
  end

  test "should destroy Studentassingment" do
    visit studentassingment_url(@studentassingment)
    click_on "Destroy this studentassingment", match: :first

    assert_text "Studentassingment was successfully destroyed"
  end
end
