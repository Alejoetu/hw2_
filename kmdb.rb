# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Actor.destroy_all
Movie.destroy_all
Role.destroy_all
Studio.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

new_Studio = Studio.new
new_Studio ["name"] = "Warner Bros."
new_Studio.save

Warner = Studio.find_by({"name" =>"Warner Bros."})
new_Movie1 = Movie.new
new_Movie1 ["title"] = "Batman Begins"
new_Movie1 ["year_released"] = "2005"
new_Movie1 ["rated"] = "PG-13"
new_Movie1 ["studio_id"] = Warner["id"]
new_Movie1.save

new_Movie2 = Movie.new
new_Movie2 ["title"] = "The Dark Knight"
new_Movie2 ["year_released"] = "2008"
new_Movie2 ["rated"] = "PG-13"
new_Movie2 ["studio_id"] = Warner["id"]
new_Movie2.save

new_Movie3 = Movie.new
new_Movie3 ["title"] = "The Dark Knight Rises"
new_Movie3 ["year_released"] = "2012"
new_Movie3 ["rated"] = "PG-13"
new_Movie3 ["studio_id"] = Warner["id"]
new_Movie3.save

new_Actor1 = Actor.new
new_Actor1 ["name"] = "Christian Bale"
new_Actor1.save

new_Actor2 = Actor.new
new_Actor2 ["name"] = "Michael Caine"
new_Actor2.save

new_Actor3 = Actor.new
new_Actor3 ["name"] = "Liam Neeson"
new_Actor3.save

new_Actor4 = Actor.new
new_Actor4 ["name"] = "Katie Holmes"
new_Actor4.save

new_Actor5 = Actor.new
new_Actor5 ["name"] = "Gary Oldman"
new_Actor5.save

new_Actor6 = Actor.new
new_Actor6 ["name"] = "Heath Ledger"
new_Actor6.save

new_Actor7 = Actor.new
new_Actor7 ["name"] = "Aaron Eckhart"
new_Actor7.save

new_Actor8 = Actor.new
new_Actor8 ["name"] = "Maggie Gyllenhaal"
new_Actor8.save

new_Actor9 = Actor.new
new_Actor9 ["name"] = "Tom Hardy"
new_Actor9.save

new_Actor10 = Actor.new
new_Actor10 ["name"] = "Joseph Gordon-Levitt"
new_Actor10.save

new_Actor11 = Actor.new
new_Actor11 ["name"] = "Anne Hathaway"
new_Actor11.save

Bale = Actor.find_by({"name" =>"Christian Bale"})
Caine = Actor.find_by({"name" =>"Michael Caine"})
Neeson = Actor.find_by({"name" =>"Liam Neeson"})
Holmes = Actor.find_by({"name" =>"Katie Holmes"})
Oldman = Actor.find_by({"name" =>"Gary Oldman"})
Ledger = Actor.find_by({"name" =>"Heath Ledger"})
Eckhart = Actor.find_by({"name" =>"Aaron Eckhart"})
Gyllenhaal = Actor.find_by({"name" =>"Maggie Gyllenhaal"})
Hardy = Actor.find_by({"name" =>"Tom Hardy"})
Gordon = Actor.find_by({"name" =>"Joseph Gordon-Levitt"})
Hathaway = Actor.find_by({"name" =>"Anne Hathaway"})


Begins = Movie.find_by({"title" =>"Batman Begins"})
new_Role1 = Role.new
new_Role1 ["movie_id"] = Begins["id"]
new_Role1 ["actor_id"] = Bale["id"]
new_Role1 ["character_name"] = "Bruce Wayne"
new_Role1.save

new_Role2 = Role.new
new_Role2 ["movie_id"] = Begins["id"]
new_Role2 ["actor_id"] = Caine["id"]
new_Role2 ["character_name"] = "Alfred"
new_Role2.save

new_Role3 = Role.new
new_Role3 ["movie_id"] = Begins["id"]
new_Role3 ["actor_id"] = Neeson["id"]
new_Role3 ["character_name"] = "Ra's Al Ghul"
new_Role3.save

new_Role4 = Role.new
new_Role4 ["movie_id"] = Begins["id"]
new_Role4 ["actor_id"] = Holmes["id"]
new_Role4 ["character_name"] = "Rachel Dawes"
new_Role4.save

new_Role5 = Role.new
new_Role5 ["movie_id"] = Begins["id"]
new_Role5 ["actor_id"] = Oldman["id"]
new_Role5 ["character_name"] = "Commissioner Gordon"
new_Role5.save

Knight = Movie.find_by({"title" =>"The Dark Knight"})
new_Role6 = Role.new
new_Role6 ["movie_id"] = Knight["id"]
new_Role6 ["actor_id"] = Bale["id"]
new_Role6 ["character_name"] = "Bruce Wayne"
new_Role6.save


new_Role7 = Role.new
new_Role7 ["movie_id"] = Knight["id"]
new_Role7 ["actor_id"] = Ledger["id"]
new_Role7 ["character_name"] = "Joker"
new_Role7.save

new_Role8 = Role.new
new_Role8 ["movie_id"] = Knight["id"]
new_Role8 ["actor_id"] = Eckhart["id"]
new_Role8 ["character_name"] = "Harvey Dent"
new_Role8.save

new_Role9 = Role.new
new_Role9 ["movie_id"] = Knight["id"]
new_Role9 ["actor_id"] = Caine["id"]
new_Role9 ["character_name"] = "Alfred"
new_Role9.save

new_Role10 = Role.new
new_Role10 ["movie_id"] = Knight["id"]
new_Role10 ["actor_id"] = Gyllenhaal["id"]
new_Role10 ["character_name"] = "Rachel Dawes"
new_Role10.save

Rises = Movie.find_by({"title" =>"The Dark Knight Rises"})
new_Role11 = Role.new
new_Role11 ["movie_id"] = Rises["id"]
new_Role11 ["actor_id"] = Bale["id"]
new_Role11 ["character_name"] = "Bruce Wayne"
new_Role11.save

new_Role12 = Role.new
new_Role12 ["movie_id"] = Rises["id"]
new_Role12 ["actor_id"] = Oldman["id"]
new_Role12 ["character_name"] = "Commissioner Gordon"
new_Role12.save

new_Role13 = Role.new
new_Role13 ["movie_id"] = Rises["id"]
new_Role13 ["actor_id"] = Hardy["id"]
new_Role13 ["character_name"] = "Bane"
new_Role13.save

new_Role14 = Role.new
new_Role14 ["movie_id"] = Rises["id"]
new_Role14 ["actor_id"] = Gordon["id"]
new_Role14 ["character_name"] = "John Blake"
new_Role14.save

new_Role15 = Role.new
new_Role15 ["movie_id"] = Rises["id"]
new_Role15 ["actor_id"] = Hathaway["id"]
new_Role15 ["character_name"] = "Selina Kyle"
new_Role15.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

Warner_movie = Movie.where ({"studio_id" => Warner["id"]})

for movie in Warner_movie
    title = movie["title"]
    year = movie["year_released"]
    rating = movie["rated"]
    studio = Warner["name"]

    puts "#{title} #{year} #{rating} #{studio}"
end 
 


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Actores = Role.where ({"actor_id" => Batman["id"]})

Titulos = Role.where ({"movie_id" => Movies["id"]})

for role in Titulos
    title = 1
    # actor = actor["name"]
    character = role ["character_name"]
    

    puts "#{title} #{character}"
end 