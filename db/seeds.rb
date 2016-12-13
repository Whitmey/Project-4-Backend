["users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "Will",
  email: "w.whitmey@outlook.com",
  password: "password",
  password_confirmation: "password"
}])

Game.create!([{
  name: "Battlefield",
  image: "https://static-cdn.jtvnw.net/ttv-boxart/Battlefield%201-272x380.jpg"
  },{
  name: "League Of Legends",
  image: "https://static-cdn.jtvnw.net/ttv-boxart/Battlefield%201-272x380.jpg"
}])

# Profile.create!([{
#   rank: "Diamond",
#   fee: 20,
#   contact: "w.whitmey@email.com",
#   game_id: 1,
#   user_id: 1
# }])
#
# Review.create!([{
#   user_id: 1,
#   profile_id: 1,
#   rating: 5,
#   text: "Very helpful"
# }])
