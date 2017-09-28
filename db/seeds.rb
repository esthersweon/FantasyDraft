# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
League.destroy_all
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
  },
  ])

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
    ])
