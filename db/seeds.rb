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
		id: 1,
		name: "Battlefield",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Battlefield%201-272x380.jpg"
	},
	{
		id: 4,
		name: "FIFA 17",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/FIFA%2017-272x380.jpg"
	},
	{
		id: 5,
		name: "Grand Theft Auto V",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Grand%20Theft%20Auto%20V-272x380.jpg"
	},
	{
		id: 6,
		name: "No Man's Sky",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/No%20Man%27s%20Sky-272x380.jpg"
	},
	{
		id: 7,
		name: "League Of Legends",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/League%20of%20Legends-272x380.jpg"
	},
	{
		id: 8,
		name: "Overwatch",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Overwatch-272x380.jpg"
	},
	{
		id: 9,
		name: "The Division",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Tom%20Clancy%27s%20The%20Division-272x380.jpg"
	},
	{
		id: 10,
		name: "Final Fantasy XV",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Final%20Fantasy%20XV-272x380.jpg"
	},
	{
		id: 11,
		name: "Destiny",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Destiny-272x380.jpg"
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
