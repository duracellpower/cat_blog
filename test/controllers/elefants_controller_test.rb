require 'test_helper'

class ElefantsControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get elefants_name_url
    assert_response :success
  end

  test "should get string" do
    get elefants_string_url
    assert_response :success
  end

  test "should get prename" do
    get elefants_prename_url
    assert_response :success
  end

  test "should get string" do
    get elefants_string_url
    assert_response :success
  end

  test "should get birthdate" do
    get elefants_birthdate_url
    assert_response :success
  end

  test "should get date" do
    get elefants_date_url
    assert_response :success
  end

  test "should get info" do
    get elefants_info_url
    assert_response :success
  end

  test "should get string" do
    get elefants_string_url
    assert_response :success
  end

end
