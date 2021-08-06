require "test_helper"

class AccountsettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accountsettings_index_url
    assert_response :success
  end
end
