json.array!(@team_player_ships) do |team_player_ship|
  json.extract! team_player_ship, :id, :team_id, :player_id
  json.url team_player_ship_url(team_player_ship, format: :json)
end
