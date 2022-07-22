require "application_system_test_case"

class JionclassesTest < ApplicationSystemTestCase
  setup do
    @jionclass = jionclasses(:one)
  end

  test "visiting the index" do
    visit jionclasses_url
    assert_selector "h1", text: "Jionclasses"
  end

  test "should create jionclass" do
    visit jionclasses_url
    click_on "New jionclass"

    fill_in "Branchcode", with: @jionclass.branchcode
    fill_in "Classname", with: @jionclass.classname
    fill_in "Collegecode", with: @jionclass.collegecode
    fill_in "Subjectcode", with: @jionclass.subjectcode
    click_on "Create Jionclass"

    assert_text "Jionclass was successfully created"
    click_on "Back"
  end

  test "should update Jionclass" do
    visit jionclass_url(@jionclass)
    click_on "Edit this jionclass", match: :first

    fill_in "Branchcode", with: @jionclass.branchcode
    fill_in "Classname", with: @jionclass.classname
    fill_in "Collegecode", with: @jionclass.collegecode
    fill_in "Subjectcode", with: @jionclass.subjectcode
    click_on "Update Jionclass"

    assert_text "Jionclass was successfully updated"
    click_on "Back"
  end

  test "should destroy Jionclass" do
    visit jionclass_url(@jionclass)
    click_on "Destroy this jionclass", match: :first

    assert_text "Jionclass was successfully destroyed"
  end
end
