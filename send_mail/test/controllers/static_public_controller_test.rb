require 'test_helper'

class StaticPublicControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get send_mail" do
    get :send_mail
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

  test "should get fail" do
    get :fail
    assert_response :success
  end

end
