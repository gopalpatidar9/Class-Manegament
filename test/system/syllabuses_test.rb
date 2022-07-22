require "application_system_test_case"

class SyllabusesTest < ApplicationSystemTestCase
  setup do
    @syllabus = syllabuses(:one)
  end

  test "visiting the index" do
    visit syllabuses_url
    assert_selector "h1", text: "Syllabuses"
  end

  test "should create syllabus" do
    visit syllabuses_url
    click_on "New syllabus"

    fill_in "File", with: @syllabus.file
    click_on "Create Syllabus"

    assert_text "Syllabus was successfully created"
    click_on "Back"
  end

  test "should update Syllabus" do
    visit syllabus_url(@syllabus)
    click_on "Edit this syllabus", match: :first

    fill_in "File", with: @syllabus.file
    click_on "Update Syllabus"

    assert_text "Syllabus was successfully updated"
    click_on "Back"
  end

  test "should destroy Syllabus" do
    visit syllabus_url(@syllabus)
    click_on "Destroy this syllabus", match: :first

    assert_text "Syllabus was successfully destroyed"
  end
end
