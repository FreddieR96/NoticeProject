# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(username: "Alpha", password: "first")
Admin.create(username: "Bravo", password: "second")
Admin.create(username: "Charlie", password: "third")

Notice.create(title: "Hello world")
Notice.create(title: "Piano for sale", body: "We are selling an old piano.\r\n\r\nThe only catch is you have to come to our house to collect it.", notecategory: "Sale")
Notice.create(title: "Trains enthusiasts first meeting", body: "First floor.\r\n\r\nSteam museum.\r\n\r\nBrentford.", notecategory: "Announcement")
Notice.create(title: "We have had a baby!", body: "A little baby girl.\r\n\r\nMum and daughter are well.", notecategory: "Personal")
Notice.create(title: "Beware of foxes", body: "They are out raiding the bins again.", notecategory: "Warning")
Notice.create(title: "Testing to see if this works")
Notice.create(title: "Upstairs neightbour stop stamping feet", body: "Beginning to get on my nerves")
Notice.create(title: "Bad weather reminder", body: "It is going to rain tomorrow so cricket practice is cancelled")