movies = [
  Movie.find_by_name('Wonder Woman 1982'),
  Movie.find_by_name('Tenet'),
  Movie.find_by_name('The Queens Gambit'),
  Movie.find_by_name('Pakistani Movie'),
  Movie.find_by_name('James Bond')
]

users = [
  User.find_by_email('ushay@ushay.com'),
  User.find_by_email('test@ushay.com'),
  User.find_by_email('test1@ushay.com'),
  User.find_by_email('test2@ushay.com')
]

users.each do |user|
  movies.each do |movie|
    Rating.where(movie_id: movie_id, user_id: user_id).find_or_create_by!(
      user: user,
      movie: movie,
      value: rand(0...10) 
    )
  end
end