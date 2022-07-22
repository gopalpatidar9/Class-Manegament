require "test_helper"

class CreateclassControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get createclass_index_url
    assert_response :success
  end
end
