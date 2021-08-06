require "application_system_test_case"

class CvuploadsTest < ApplicationSystemTestCase
  setup do
    @cvupload = cvuploads(:one)
  end

  test "visiting the index" do
    visit cvuploads_url
    assert_selector "h1", text: "Cvuploads"
  end

  test "creating a Cvupload" do
    visit cvuploads_url
    click_on "New Cvupload"

    fill_in "Text", with: @cvupload.text
    click_on "Create Cvupload"

    assert_text "Cvupload was successfully created"
    click_on "Back"
  end

  test "updating a Cvupload" do
    visit cvuploads_url
    click_on "Edit", match: :first

    fill_in "Text", with: @cvupload.text
    click_on "Update Cvupload"

    assert_text "Cvupload was successfully updated"
    click_on "Back"
  end

  test "destroying a Cvupload" do
    visit cvuploads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cvupload was successfully destroyed"
  end
end
