# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



games = [
    { name: 'Super Mario', platform: 'fc' }, 
    { name: 'Bomb man', platform: 'fc' }, 
    { name: 'Bat man', platform: 'fc' }, 
    { name: 'Tank', platform: 'fc' }, 
    { name: 'Teris', platform: 'fc' }, 
    { name: 'Kongfu', platform: 'fc' }, 
    { name: 'Moonlight', platform: 'ps' }, 
    { name: 'Sanguo', platform: 'ps' }, 
    { name: 'LoveLoveLove', platform: 'ps' }, 
    { name: 'Selient Killer', platform: 'pc' }
]
games.each do |g|
    Game.create(g);
end



users = [
    { name: 'John XXX', age: Random.new.rand(1..100) },
    { name: 'XXXX Yang', age:  Random.new.rand(1..100)  },
    { name: 'Kun XXX', age:  Random.new.rand(1..100)  },
    { name: 'XXXX Dai', age:  Random.new.rand(1..100)  },
]
users.each do |u|

    p "user create", u
    User.create(u);
end


game_id_all = Game.select('id').all
game_max_number = game_id_all.size-1
random = Random.new

game_id_all[random.rand(0..game_max_number)]


user_game_relationships = [
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
    { user_id: User.first.id , game_id: game_id_all[random.rand(0..game_max_number)].id, relationship: 'like' },
].uniq


#p user_game_relationships

user_game_relationships.each do |r|
    UserGameRelationship.create(r);
end




