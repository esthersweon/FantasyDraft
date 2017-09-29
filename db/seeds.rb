# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Team.destroy_all
League.destroy_all
User.destroy_all

# name these 'response' variables different things that are more descriptive (i.e. "first_50")
# Also, use var or let, instead of globals
response = HTTParty.get("http://api.fantasy.nfl.com/v1/players/editordraftranks?format=json")
response["players"].each do |player|
    Player.create({
      name: player["firstName"] +" "+ player["lastName"],
      position: player["position"],
      nfl_team: player["teamAbbr"]
      })
end

response = HTTParty.get("http://api.fantasy.nfl.com/v1/players/editordraftranks?format=json&offset=50")
response["players"].each do |player|
    Player.create({
      name: player["firstName"] +" "+ player["lastName"],
      position: player["position"],
      nfl_team: player["teamAbbr"]
      })
end

response = HTTParty.get("http://api.fantasy.nfl.com/v1/players/editordraftranks?format=json&offset=100")
response["players"].each do |player|
    Player.create({
      name: player["firstName"] +" "+ player["lastName"],
      position: player["position"],
      nfl_team: player["teamAbbr"]
      })
end

response = HTTParty.get("http://api.fantasy.nfl.com/v1/players/editordraftranks?format=json&offset=150")
response["players"].each do |player|
    Player.create({
      name: player["firstName"] +" "+ player["lastName"],
      position: player["position"],
      nfl_team: player["teamAbbr"]
      })
end

response = HTTParty.get("http://api.fantasy.nfl.com/v1/players/editordraftranks?format=json&offset=200")
response["players"].each do |player|
    Player.create({
      name: player["firstName"] +" "+ player["lastName"],
      position: player["position"],
      nfl_team: player["teamAbbr"]
      })
end

User.create([
  {
    name: "Jimmy",
    email: "jimmy@test.com",
    password: "test"
  },
  {
    name: "Ellis",
    email: "ellis@test.com",
    password: "test"
  },
  {
    name: "David",
    email: "david@test.com",
    password: "test"
  }
]);
# ^ indentation!

# indentation for the League stuff too!
# ANYTHING that is nested should be indented,
# and the BEGINNING AND END of anything (loop, object, etc)
# should be lined up with each other.
League.create([
  {
    user: User.first,
    name: "League 1",
    format: "format 1"
  },
  {
    user: User.second,
    name: "League 2",
    format: "format 2"
  },
  {
    user: User.third,
    name: "League 3",
    format: "format 3"
  },
]);

# INDENTATION
Team.create([
  {
  name: "Team 1",
  league: League.first,
  user: User.first
  },
  {
  name: "Team 2",
  league: League.first,
  user: User.second
  },
  {
  name: "Team 3",
  league: League.first,
  user: User.third
  },
  {
  name: "Team 4",
  league: League.second,
  user: User.first
  },
  {
  name: "Team 5",
  league: League.second,
  user: User.second
  },
  {
  name: "Team 6",
  league: League.third,
  user: User.first,
  players: [Player.first, Player.second, Player.third]
  },
  ])
