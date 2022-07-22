require "application_system_test_case"

class AnswersTest < ApplicationSystemTestCase
  setup do
    @answer = answers(:one)
  end

  test "visiting the index" do
    visit answers_url
    assert_selector "h1", text: "Answers"
  end

  test "should create answer" do
    visit answers_url
    click_on "New answer"

    fill_in "Answer text", with: @answer.answer_text
    fill_in "Correct", with: @answer.correct
    fill_in "Points", with: @answer.points
    click_on "Create Answer"

    assert_text "Answer was successfully created"
    click_on "Back"
  end

  test "should update Answer" do
    visit answer_url(@answer)
    click_on "Edit this answer", match: :first

    fill_in "Answer text", with: @answer.answer_text
    fill_in "Correct", with: @answer.correct
    fill_in "Points", with: @answer.points
    click_on "Update Answer"

    assert_text "Answer was successfully updated"
    click_on "Back"
  end

  test "should destroy Answer" do
    visit answer_url(@answer)
    click_on "Destroy this answer", match: :first

    assert_text "Answer was successfully destroyed"
  end
end
