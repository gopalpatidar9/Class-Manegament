require "test_helper"

class CreateclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @createclass = createclasses(:one)
  end

  test "should get index" do
    get createclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_createclass_url
    assert_response :success
  end

  test "should create createclass" do
    assert_difference("Createclass.count") do
      post createclasses_url, params: { createclass: { branchcode: @createclass.branchcode, classname: @createclass.classname, collegecode: @createclass.collegecode, session: @createclass.session, subjectcode: @createclass.subjectcode } }
    end

    assert_redirected_to createclass_url(Createclass.last)
  end

  test "should show createclass" do
    get createclass_url(@createclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_createclass_url(@createclass)
    assert_response :success
  end

  test "should update createclass" do
    patch createclass_url(@createclass), params: { createclass: { branchcode: @createclass.branchcode, classname: @createclass.classname, collegecode: @createclass.collegecode, session: @createclass.session, subjectcode: @createclass.subjectcode } }
    assert_redirected_to createclass_url(@createclass)
  end

  test "should destroy createclass" do
    assert_difference("Createclass.count", -1) do
      delete createclass_url(@createclass)
    end

    assert_redirected_to createclasses_url
  end
end
