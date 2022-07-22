require "test_helper"

class JoinclassControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get joinclass_index_url
    assert_response :success
  end
end
