json.array!(@players) do |player|
  json.extract! player, :id, :name, :sapid, :email, :position, :judge
  json.url player_url(player, format: :json)
end
