require 'test_helper'

class TeamPlayerShipsControllerTest < ActionController::TestCase
  setup do
    @team_player_ship = team_player_ships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_player_ships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_player_ship" do
    assert_difference('TeamPlayerShip.count') do
      post :create, team_player_ship: { player_id: @team_player_ship.player_id, team_id: @team_player_ship.team_id }
    end

    assert_redirected_to team_player_ship_path(assigns(:team_player_ship))
  end

  test "should show team_player_ship" do
    get :show, id: @team_player_ship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_player_ship
    assert_response :success
  end

  test "should update team_player_ship" do
    patch :update, id: @team_player_ship, team_player_ship: { player_id: @team_player_ship.player_id, team_id: @team_player_ship.team_id }
    assert_redirected_to team_player_ship_path(assigns(:team_player_ship))
  end

  test "should destroy team_player_ship" do
    assert_difference('TeamPlayerShip.count', -1) do
      delete :destroy, id: @team_player_ship
    end

    assert_redirected_to team_player_ships_path
  end
end
