["users", 'games'].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end


User.create({
  username: "will",
  email: "w.whitmey@outlook.com",
  password: "password",
  password_confirmation: "password"
  })

puts "Just made Will"

Game.create([{
		name: "Battlefield",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Battlefield%201-272x380.jpg"
	},
	{
		name: "FIFA 17",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/FIFA%2017-272x380.jpg"
	},
	{
		name: "Grand Theft Auto V",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Grand%20Theft%20Auto%20V-272x380.jpg"
	},
	{
		name: "No Man's Sky",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/No%20Man%27s%20Sky-272x380.jpg"
	},
	{
		name: "League Of Legends",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/League%20of%20Legends-272x380.jpg"
	},
	{
		name: "Overwatch",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Overwatch-272x380.jpg"
	},
	{
		name: "The Division",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Tom%20Clancy%27s%20The%20Division-272x380.jpg"
	},
	{
		name: "Destiny",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Destiny-272x380.jpg"
	},
	{
		name: "Call Of Duty",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Call%20of%20Duty:%20Modern%20Warfare%20Remastered-272x380.jpg"
	},
	{
		name: "H1Z1",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/H1Z1:%20King%20of%20the%20Kill-272x380.jpg"
	},
	{
		name: "Rocket League",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Rocket%20League-272x380.jpg"
	},
	{
		name: "Final Fantasy",
		image: "https://static-cdn.jtvnw.net/ttv-boxart/Final%20Fantasy%20XIV:%20Heavensward-272x380.jpg"
	}])

puts "Seed file ran!"
