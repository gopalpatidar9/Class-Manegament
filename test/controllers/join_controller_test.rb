require "test_helper"

class JoinControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get join_index_url
    assert_response :success
  end
end
