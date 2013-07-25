require 'test_helper'

class UserGameRelationshipsControllerTest < ActionController::TestCase
  setup do
    @user_game_relationship = user_game_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_game_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_game_relationship" do
    assert_difference('UserGameRelationship.count') do
      post :create, user_game_relationship: { game_id: @user_game_relationship.game_id, relationship: @user_game_relationship.relationship, user_id: @user_game_relationship.user_id }
    end

    assert_redirected_to user_game_relationship_path(assigns(:user_game_relationship))
  end

  test "should show user_game_relationship" do
    get :show, id: @user_game_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_game_relationship
    assert_response :success
  end

  test "should update user_game_relationship" do
    put :update, id: @user_game_relationship, user_game_relationship: { game_id: @user_game_relationship.game_id, relationship: @user_game_relationship.relationship, user_id: @user_game_relationship.user_id }
    assert_redirected_to user_game_relationship_path(assigns(:user_game_relationship))
  end

  test "should destroy user_game_relationship" do
    assert_difference('UserGameRelationship.count', -1) do
      delete :destroy, id: @user_game_relationship
    end

    assert_redirected_to user_game_relationships_path
  end
end
