user = User.find_by_email 'ushay@ushay.com'

genres = {
  Comedy: Genre.find_by_category('Comedy'),
  Action: Genre.find_by_category('Action'),
  Horror: Genre.find_by_category('Horror'),
  Sci_Fi: Genre.find_by_category('Sci_Fi'),
  Thriller: Genre.find_by_category('Thriller'),
  Adventure: Genre.find_by_category('Adventure')
}

video_quality = {
  '4K': VideoQuality.find_by_resolution('4K'),
  '1080p': VideoQuality.find_by_resolution('1080p'),
  '720p': VideoQuality.find_by_resolution('720p'),
  '480p': VideoQuality.find_by_resolution('480p')
}

movie = Movie.where(name: 'Wonder Woman').find_or_create_by!(
  name: 'Wonder Woman',
  is_featured: true,
  downloads: 200,
  synopsis: 'Diana must contend with a work colleague and businessman, whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '25-12-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'1080p']
movie.genre << genres[:Action]
movie.genre << genres[:Adventure]

movie = Movie.where(name: 'Tenet').find_or_create_by!(
  name: 'Tenet',
  is_featured: true,
  downloads: 600,
  synopsis: 'TENETTTTTT!!!!!!!, whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '02-02-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'720p']
movie.genre << genres[:Action]
movie.genre << genres[:Sci_Fi]

movie = Movie.where(name: 'The Queens Gambit').find_or_create_by!(
  name: 'The Queens Gambit',
  is_featured: true,
  downloads: 700,
  synopsis: 'Queeeeens GAMBIT!! whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '25-09-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'4K']
movie.genre << genres[:Sci_Fi]
movie.genre << genres[:Thriller]

movie = Movie.where(name: 'Pakistani Movie').find_or_create_by!(
  name: 'Pakistani Movie',
  is_featured: true,
  downloads: 1000,
  synopsis: 'Pakistani MOVIE!!! whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '05-02-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'480p']
movie.genre << genres[:Comedy]

movie = Movie.where(name: 'James Bond').find_or_create_by!(
  name: 'James Bond',
  is_featured: true,
  downloads: 1200,
  synopsis: 'James Bond!!!! whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '15-08-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'4K']
movie.genre << genres[:Action]
movie.genre << genres[:Thriller]
movie.genre << genres[:Sci_Fi]
