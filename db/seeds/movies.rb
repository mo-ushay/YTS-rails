user = User.find_by_email 'ushay@ushay.com'

movie = Movie.where(name: 'Wonder Woman 1982').find_or_create_by!(
  name: 'Wonder Woman 1984',
  is_featured: true,
  downloads: 200,
  Synopsis: 'Diana must contend with a work colleague and businessman, whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  Languages: 'English',
  release_date: '25-12-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'1080p']
movie.genre << genre[:action]
movie.genre << genre[:adventure]

movie = Movie.where(name: 'Tenet').find_or_create_by!(
  name: 'Tenet',
  is_featured: true,
  downloads: 600,
  Synopsis: 'TENETTTTTT!!!!!!!, whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  Languages: 'French',
  release_date: '02-02-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'720p']
movie.genre << genre[:action]
movie.genre << genre[:sci_fi]

movie = Movie.where(name: 'The Queens Gambit').find_or_create_by!(
  name: 'The Queens Gambit',
  is_featured: true,
  downloads: 700,
  Synopsis: 'Queeeeens GAMBIT!! whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  Languages: 'Urdu',
  release_date: '25-09-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'4K']
movie.genre << genre[:sci_fi]
movie.genre << genre[:thriller]

movie = Movie.where(name: 'Pakistani Movie').find_or_create_by!(
  name: 'Pakistani Movie',
  is_featured: true,
  downloads: 1000,
  Synopsis: 'Pakistani MOVIE!!! whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  Languages: 'Urdu',
  release_date: '05-02-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'480p']
movie.genre << genre[:comedy]

movie = Movie.where(name: 'James Bond').find_or_create_by!(
  name: 'James Bond',
  is_featured: true,
  downloads: 1200,
  Synopsis: 'James Bond!!!! whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  Languages: 'English',
  release_date: '15-08-2020',
  user_id: user.id
)
movie.video_quality << video_quality[:'4K']
movie.genre << genre[:action]
movie.genre << genre[:thriller]
movie.genre << genre[:sci_fi]

genres = {
  comedy: Genre.find_by_name('Comedy'),
  action: Genre.find_by_name('Action'),
  horror: Genre.find_by_name('Horror'),
  sci_fi: Genre.find_by_name('Sci-fI'),
  thriller: Genre.find_by_name('Thriller'),
  adventure: Genre.find_by_name('Adventure')
}

video_quality = {
  '4K': VideoQuality.find_by_resolution('4K'),
  '1080p': VideoQuality.find_by_resolution('1080p'),
  '720p': VideoQuality.find_by_resolution('720p'),
  '480p': VideoQuality.find_by_resolution('480p')
}
