require "application_system_test_case"

class TimetablesTest < ApplicationSystemTestCase
  setup do
    @timetable = timetables(:one)
  end

  test "visiting the index" do
    visit timetables_url
    assert_selector "h1", text: "Timetables"
  end

  test "should create timetable" do
    visit timetables_url
    click_on "New timetable"

    fill_in "File", with: @timetable.file
    click_on "Create Timetable"

    assert_text "Timetable was successfully created"
    click_on "Back"
  end

  test "should update Timetable" do
    visit timetable_url(@timetable)
    click_on "Edit this timetable", match: :first

    fill_in "File", with: @timetable.file
    click_on "Update Timetable"

    assert_text "Timetable was successfully updated"
    click_on "Back"
  end

  test "should destroy Timetable" do
    visit timetable_url(@timetable)
    click_on "Destroy this timetable", match: :first

    assert_text "Timetable was successfully destroyed"
  end
end
