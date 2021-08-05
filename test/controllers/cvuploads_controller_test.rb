require "test_helper"

class CvuploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cvupload = cvuploads(:one)
  end

  test "should get index" do
    get cvuploads_url
    assert_response :success
  end

  test "should get new" do
    get new_cvupload_url
    assert_response :success
  end

  test "should create cvupload" do
    assert_difference('Cvupload.count') do
      post cvuploads_url, params: { cvupload: { text: @cvupload.text } }
    end

    assert_redirected_to cvupload_url(Cvupload.last)
  end

  test "should show cvupload" do
    get cvupload_url(@cvupload)
    assert_response :success
  end

  test "should get edit" do
    get edit_cvupload_url(@cvupload)
    assert_response :success
  end

  test "should update cvupload" do
    patch cvupload_url(@cvupload), params: { cvupload: { text: @cvupload.text } }
    assert_redirected_to cvupload_url(@cvupload)
  end

  test "should destroy cvupload" do
    assert_difference('Cvupload.count', -1) do
      delete cvupload_url(@cvupload)
    end

    assert_redirected_to cvuploads_url
  end
end
