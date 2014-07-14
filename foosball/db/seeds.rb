# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


players = []

players <<  Player.create({ name: "Terry Yu", sapid: :I037610, judge: false} )
players <<  Player.create({ name: "Calvin Gu", sapid: :I072344, judge: false} )

players <<  Player.create({ name: "Su Lei", sapid: :I061745,  judge: true} )
players <<  Player.create({ name: "Zhao Beily", sapid: :I016679, judge: false} )


players <<  Player.create({ name: "Shou, Zhansheng", sapid: :I075723, judge: false} )


Team.create(players: [players[0], players[1]] , name: "Dragon-boat")
Team.create(players: players[2,3]  , name: "Still Fort")



