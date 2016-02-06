# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
   directors = Director.create([
      { first_name: "Tommy", last_name: "Wiseau", birthdate: Date.parse("1955-10-03")},
      { first_name: "Alfred", last_name: "Hitchock", birthdate: Date.parse("1899-08-13"), deathdate: Date.parse("1980-04-29")},
      { first_name: "Steven", last_name: "Spielberg", birthdate: Date.parse("1946-12-18")},
      { first_name: "Martin", last_name: "Scorsese", birthdate: Date.parse("1942-11-17")}
    ])
   movies = Movie.create([
      { title: "The Room", genre: "Comedy", release_date: Date.parse("2004-03-04"), director: Director.first},
      { title: "E.T. the Extra-Terrestrial", genre: "Sci-fi", release_date: Date.parse("1982-06-11"), director: Director.third},
      { title: "Jaws", genre: "Horror", release_date: Date.parse("1975-06-20"), director: Director.third},
      { title: "The Birds", genre: "Horror", release_date: Date.parse("1963-03-28"), director: Director.second}
   ])
