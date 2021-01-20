DIRECTOR = 'director'.freeze
ACTOR = 'actor'.freeze

movies = {
  Wonder_Woman_1982: Movie.find_by_name('Wonder Woman 1982'),
  Tenet: Movie.find_by_name('Tenet'),
  The_Queens_Gambit: Movie.find_by_name('The Queens Gambit'),
  Pakistani_Movie: Movie.find_by_name('Pakistani Movie'),
  James_Bond: Movie.find_by_name('James Bond')
}

actors = {
  Ushay: Actor.find_by_name('Ushay'),
  Jason_Statham: Actor.find_by_name('Jason Statham'),
  Gal_Gaddot: Actor.find_by_name('Gal Gaddot'),
  Liam_Neeson: Actor.find_by_name('Liam Neeson'),
}

MovieRole.where(
  actor_id: actors[:Gal_Gaddot].id, movie_id: movies[:Wonder_Woman_1982].id, role_played: ACTOR).find_or_create_by!(
  actor: actors[ :Gal_Gaddot ],
  movie: movies[:Wonder_Woman_1982],
  role_played: ACTOR,
  acting_as: 'Lead'
)
MovieRole.where(
  actor_id: actors[:Jason_Statham].id, movie_id: movies[:Wonder_Woman_1982].id, role_played: DIRECTOR).find_or_create_by!(
  actor: actors[:Jason_Statham],
  movie: movies[:Wonder_Woman_1982],
  role_played: DIRECTOR
)

MovieRole.where(
  actor_id: actors[:Ushay].id, movie_id: movies[:Pakistani_Movie].id, role_played: DIRECTOR).find_or_create_by!(
  actor: actors[:Ushay],
  movie: movies[:Pakistani_Movie],
  role_played: DIRECTOR
)

MovieRole.where(
  actor_id: actors[:Jason_Statham].id, movie_id: movies[:Pakistani_Movie].id, role_played: ACTOR).find_or_create_by!(
  actor: actors[:Jason_Statham],
  movie: movies[:Pakistani_Movie],
  role_played: ACTOR,
  acting_as: 'Lead'
)

MovieRole.where(
  actor_id: actors[:Jason_Statham].id, movie_id: movies[:Tenet].id, role_played: ACTOR).find_or_create_by!(
  actor: actors[:Jason_Statham],
  movie: movies[:Tenet],
  role_played: ACTOR,
  acting_as: 'Supporting'
)

MovieRole.where(
  actor_id: actors[:Ushay].id, movie_id: movies[:Tenet].id, role_played: DIRECTOR).find_or_create_by!(
  actor: actors[:Ushay],
  movie: movies[:Tenet],
  role_played: DIRECTOR,
  )

MovieRole.where(
  actor_id: actors[:Liam_Neeson].id, movie_id: movies[:James_Bond].id, role_played: DIRECTOR).find_or_create_by!(
  actor: actors[ :Liam_Neeson ],
  movie: movies[:James_Bond],
  role_played: DIRECTOR
)

MovieRole.where(
  actor_id: actors[:Gal_Gaddot].id, movie_id: movies[:James_Bond].id, role_played: ACTOR).find_or_create_by!(
  actor: actors[ :Gal_Gaddot ],
  movie: movies[:James_Bond],
  role_played: ACTOR,
  acting_as: 'Lead'
  )
