require "test_helper"

class StudentprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentprofile = studentprofiles(:one)
  end

  test "should get index" do
    get studentprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_studentprofile_url
    assert_response :success
  end

  test "should create studentprofile" do
    assert_difference("Studentprofile.count") do
      post studentprofiles_url, params: { studentprofile: { image: @studentprofile.image } }
    end

    assert_redirected_to studentprofile_url(Studentprofile.last)
  end

  test "should show studentprofile" do
    get studentprofile_url(@studentprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentprofile_url(@studentprofile)
    assert_response :success
  end

  test "should update studentprofile" do
    patch studentprofile_url(@studentprofile), params: { studentprofile: { image: @studentprofile.image } }
    assert_redirected_to studentprofile_url(@studentprofile)
  end

  test "should destroy studentprofile" do
    assert_difference("Studentprofile.count", -1) do
      delete studentprofile_url(@studentprofile)
    end

    assert_redirected_to studentprofiles_url
  end
end
