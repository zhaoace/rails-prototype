require 'test_helper'

class StaticsPublicControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

  test "should get battle_map" do
    get :battle_map
    assert_response :success
  end

  test "should get best_shooter" do
    get :best_shooter
    assert_response :success
  end

end
