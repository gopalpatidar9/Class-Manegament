require "test_helper"

class StudentassingmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentassingment = studentassingments(:one)
  end

  test "should get index" do
    get studentassingments_url
    assert_response :success
  end

  test "should get new" do
    get new_studentassingment_url
    assert_response :success
  end

  test "should create studentassingment" do
    assert_difference("Studentassingment.count") do
      post studentassingments_url, params: { studentassingment: { file: @studentassingment.file } }
    end

    assert_redirected_to studentassingment_url(Studentassingment.last)
  end

  test "should show studentassingment" do
    get studentassingment_url(@studentassingment)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentassingment_url(@studentassingment)
    assert_response :success
  end

  test "should update studentassingment" do
    patch studentassingment_url(@studentassingment), params: { studentassingment: { file: @studentassingment.file } }
    assert_redirected_to studentassingment_url(@studentassingment)
  end

  test "should destroy studentassingment" do
    assert_difference("Studentassingment.count", -1) do
      delete studentassingment_url(@studentassingment)
    end

    assert_redirected_to studentassingments_url
  end
end
