require "application_system_test_case"

class AssingmentsTest < ApplicationSystemTestCase
  setup do
    @assingment = assingments(:one)
  end

  test "visiting the index" do
    visit assingments_url
    assert_selector "h1", text: "Assingments"
  end

  test "should create assingment" do
    visit assingments_url
    click_on "New assingment"

    fill_in "Duedate", with: @assingment.duedate
    fill_in "Points", with: @assingment.points
    fill_in "Title", with: @assingment.title
    fill_in "Topic", with: @assingment.topic
    click_on "Create Assingment"

    assert_text "Assingment was successfully created"
    click_on "Back"
  end

  test "should update Assingment" do
    visit assingment_url(@assingment)
    click_on "Edit this assingment", match: :first

    fill_in "Duedate", with: @assingment.duedate
    fill_in "Points", with: @assingment.points
    fill_in "Title", with: @assingment.title
    fill_in "Topic", with: @assingment.topic
    click_on "Update Assingment"

    assert_text "Assingment was successfully updated"
    click_on "Back"
  end

  test "should destroy Assingment" do
    visit assingment_url(@assingment)
    click_on "Destroy this assingment", match: :first

    assert_text "Assingment was successfully destroyed"
  end
end
