require "test_helper"

class JionclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jionclass = jionclasses(:one)
  end

  test "should get index" do
    get jionclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_jionclass_url
    assert_response :success
  end

  test "should create jionclass" do
    assert_difference("Jionclass.count") do
      post jionclasses_url, params: { jionclass: { branchcode: @jionclass.branchcode, classname: @jionclass.classname, collegecode: @jionclass.collegecode, subjectcode: @jionclass.subjectcode } }
    end

    assert_redirected_to jionclass_url(Jionclass.last)
  end

  test "should show jionclass" do
    get jionclass_url(@jionclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_jionclass_url(@jionclass)
    assert_response :success
  end

  test "should update jionclass" do
    patch jionclass_url(@jionclass), params: { jionclass: { branchcode: @jionclass.branchcode, classname: @jionclass.classname, collegecode: @jionclass.collegecode, subjectcode: @jionclass.subjectcode } }
    assert_redirected_to jionclass_url(@jionclass)
  end

  test "should destroy jionclass" do
    assert_difference("Jionclass.count", -1) do
      delete jionclass_url(@jionclass)
    end

    assert_redirected_to jionclasses_url
  end
end
