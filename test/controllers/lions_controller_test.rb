require 'test_helper'

class LionsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:strong" do
    get lions_name:strong_url
    assert_response :success
  end

  test "should get pre_name:string" do
    get lions_pre_name:string_url
    assert_response :success
  end

  test "should get birthdate:date" do
    get lions_birthdate:date_url
    assert_response :success
  end

  test "should get info:string" do
    get lions_info:string_url
    assert_response :success
  end

end
