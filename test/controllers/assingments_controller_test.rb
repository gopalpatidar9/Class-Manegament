require "test_helper"

class AssingmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assingment = assingments(:one)
  end

  test "should get index" do
    get assingments_url
    assert_response :success
  end

  test "should get new" do
    get new_assingment_url
    assert_response :success
  end

  test "should create assingment" do
    assert_difference("Assingment.count") do
      post assingments_url, params: { assingment: { duedate: @assingment.duedate, points: @assingment.points, title: @assingment.title, topic: @assingment.topic } }
    end

    assert_redirected_to assingment_url(Assingment.last)
  end

  test "should show assingment" do
    get assingment_url(@assingment)
    assert_response :success
  end

  test "should get edit" do
    get edit_assingment_url(@assingment)
    assert_response :success
  end

  test "should update assingment" do
    patch assingment_url(@assingment), params: { assingment: { duedate: @assingment.duedate, points: @assingment.points, title: @assingment.title, topic: @assingment.topic } }
    assert_redirected_to assingment_url(@assingment)
  end

  test "should destroy assingment" do
    assert_difference("Assingment.count", -1) do
      delete assingment_url(@assingment)
    end

    assert_redirected_to assingments_url
  end
end
