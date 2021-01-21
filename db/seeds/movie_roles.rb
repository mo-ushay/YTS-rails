DIRECTOR = 'director'.freeze
ACTOR = 'actor'.freeze

movies = {
  wonder_woman: Movie.find_by_name('Wonder Woman'),
  tenet: Movie.find_by_name('Tenet'),
  the_queens_gambit: Movie.find_by_name('The Queens Gambit'),
  pakistani_movie: Movie.find_by_name('Pakistani Movie'),
  james_bond: Movie.find_by_name('James Bond')
}

actors = {
  ushay: Actor.find_by_name('Ushay'),
  jason_statham: Actor.find_by_name('Jason_Statham'),
  gal_gaddot: Actor.find_by_name('Gal_Gaddot'),
  liam_neeson: Actor.find_by_name('Liam_Neeson'),
}

MovieRole.where(
  actor_id: actors[:gal_gaddot].id, movie_id: movies[:wonder_woman].id, role_played: ACTOR).find_or_create_by!(
  actor: actors[:gal_gaddot],
  movie: movies[:wonder_woman],
  role_played: ACTOR,
  acting_as: 'Lead'
)
MovieRole.where(
  actor_id: actors[:jason_statham].id, movie_id: movies[:wonder_woman].id, role_played: DIRECTOR).find_or_create_by!(
  actor: actors[:jason_statham],
  movie: movies[:wonder_woman],
  role_played: DIRECTOR
)

MovieRole.where(
  actor_id: actors[:ushay].id, movie_id: movies[:pakistani_movie].id, role_played: DIRECTOR).find_or_create_by!(
  actor: actors[:ushay],
  movie: movies[:pakistani_movie],
  role_played: DIRECTOR
)

MovieRole.where(
  actor_id: actors[:jason_statham].id, movie_id: movies[:pakistani_movie].id, role_played: ACTOR).find_or_create_by!(
  actor: actors[:jason_statham],
  movie: movies[:pakistani_movie],
  role_played: ACTOR,
  acting_as: 'Lead'
)

MovieRole.where(
  actor_id: actors[:jason_statham].id, movie_id: movies[:tenet].id, role_played: ACTOR).find_or_create_by!(
  actor: actors[:jason_statham],
  movie: movies[:tenet],
  role_played: ACTOR,
  acting_as: 'Supporting'
)

MovieRole.where(
  actor_id: actors[:ushay].id, movie_id: movies[:tenet].id, role_played: DIRECTOR).find_or_create_by!(
  actor: actors[:ushay],
  movie: movies[:tenet],
  role_played: DIRECTOR,
  )

MovieRole.where(
  actor_id: actors[:liam_neeson].id, movie_id: movies[:james_bond].id, role_played: DIRECTOR).find_or_create_by!(
  actor: actors[ :liam_neeson ],
  movie: movies[:james_bond],
  role_played: DIRECTOR
)

MovieRole.where(
  actor_id: actors[:gal_gaddot].id, movie_id: movies[:james_bond].id, role_played: ACTOR).find_or_create_by!(
  actor: actors[ :gal_gaddot ],
  movie: movies[:james_bond],
  role_played: ACTOR,
  acting_as: 'Lead'
  )

  MovieRole.where(
    actor_id: actors[:ushay].id, movie_id: movies[:the_queens_gambit].id, role_played: DIRECTOR).find_or_create_by!(
    actor: actors[ :ushay ],
    movie: movies[:the_queens_gambit],
    role_played: DIRECTOR
  )
  
  MovieRole.where(
    actor_id: actors[:liam_neeson].id, movie_id: movies[:the_queens_gambit].id, role_played: ACTOR).find_or_create_by!(
    actor: actors[ :liam_neeson ],
    movie: movies[:the_queens_gambit],
    role_played: ACTOR,
    acting_as: 'Supporting'
  )