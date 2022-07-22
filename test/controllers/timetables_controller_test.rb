require "test_helper"

class TimetablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timetable = timetables(:one)
  end

  test "should get index" do
    get timetables_url
    assert_response :success
  end

  test "should get new" do
    get new_timetable_url
    assert_response :success
  end

  test "should create timetable" do
    assert_difference("Timetable.count") do
      post timetables_url, params: { timetable: { file: @timetable.file } }
    end

    assert_redirected_to timetable_url(Timetable.last)
  end

  test "should show timetable" do
    get timetable_url(@timetable)
    assert_response :success
  end

  test "should get edit" do
    get edit_timetable_url(@timetable)
    assert_response :success
  end

  test "should update timetable" do
    patch timetable_url(@timetable), params: { timetable: { file: @timetable.file } }
    assert_redirected_to timetable_url(@timetable)
  end

  test "should destroy timetable" do
    assert_difference("Timetable.count", -1) do
      delete timetable_url(@timetable)
    end

    assert_redirected_to timetables_url
  end
end
