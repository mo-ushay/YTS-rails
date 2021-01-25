user = User.find_by_email 'ushay@ushay.com'
  
Movie.where(name: 'Wonder Woman').find_or_create_by!(
  name: 'Wonder Woman',
  is_featured: true,
  downloads: 200,
  synopsis: 'Diana must contend with a work colleague and businessman, whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '25-12-2020',
  user_id: user.id,
  video_quality: ['4K'],
  genres: %w[Action Fantacy]
)

Movie.where(name: 'Tenet').find_or_create_by!(
  name: 'Tenet',
  is_featured: true,
  downloads: 600,
  synopsis: 'TENETTTTTT!!!!!!!, whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '02-02-2020',
  user_id: user.id,
  video_quality: ['1080p'],
  genres: %w[Action Adventure]
)

Movie.where(name: 'The Queens Gambit').find_or_create_by!(
  name: 'The Queens Gambit',
  is_featured: true,
  downloads: 700,
  synopsis: 'Queeeeens GAMBIT!! whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '25-09-2020',
  user_id: user.id,
  video_quality: ['480p'],
  genres: %w[Thriller Fantacy Action]
)

Movie.where(name: 'Pakistani Movie').find_or_create_by!(
  name: 'Pakistani Movie',
  is_featured: true,
  downloads: 1000,
  synopsis: 'Pakistani MOVIE!!! whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '05-02-2020',
  user_id: user.id,
  video_quality: ['720p'],
  genres: %w[Comedy]
)

Movie.where(name: 'James Bond').find_or_create_by!(
  name: 'James Bond',
  is_featured: true,
  downloads: 1200,
  synopsis: 'James Bond!!!! whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing!',
  release_date: '15-08-2020',
  user_id: user.id,
  video_quality: ['4K'],
  genres: %w[Action Adventure Thriller]
)
