require 'test_helper'

class RentalsControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get rentals__form_url
    assert_response :success
  end

  test "should get confirm" do
    get rentals_confirm_url
    assert_response :success
  end

  test "should get edit" do
    get rentals_edit_url
    assert_response :success
  end

  test "should get index" do
    get rentals_index_url
    assert_response :success
  end

  test "should get new" do
    get rentals_new_url
    assert_response :success
  end

  test "should get show" do
    get rentals_show_url
    assert_response :success
  end

end
