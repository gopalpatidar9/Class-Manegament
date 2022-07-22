require "application_system_test_case"

class CreateclassesTest < ApplicationSystemTestCase
  setup do
    @createclass = createclasses(:one)
  end

  test "visiting the index" do
    visit createclasses_url
    assert_selector "h1", text: "Createclasses"
  end

  test "should create createclass" do
    visit createclasses_url
    click_on "New createclass"

    fill_in "Branchcode", with: @createclass.branchcode
    fill_in "Classname", with: @createclass.classname
    fill_in "Collegecode", with: @createclass.collegecode
    fill_in "Session", with: @createclass.session
    fill_in "Subjectcode", with: @createclass.subjectcode
    click_on "Create Createclass"

    assert_text "Createclass was successfully created"
    click_on "Back"
  end

  test "should update Createclass" do
    visit createclass_url(@createclass)
    click_on "Edit this createclass", match: :first

    fill_in "Branchcode", with: @createclass.branchcode
    fill_in "Classname", with: @createclass.classname
    fill_in "Collegecode", with: @createclass.collegecode
    fill_in "Session", with: @createclass.session
    fill_in "Subjectcode", with: @createclass.subjectcode
    click_on "Update Createclass"

    assert_text "Createclass was successfully updated"
    click_on "Back"
  end

  test "should destroy Createclass" do
    visit createclass_url(@createclass)
    click_on "Destroy this createclass", match: :first

    assert_text "Createclass was successfully destroyed"
  end
end
