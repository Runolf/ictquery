require "test_helper"

class SollicitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sollicitations_index_url
    assert_response :success
  end
end
