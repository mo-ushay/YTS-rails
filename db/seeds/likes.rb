users = [
  User.find_by_email('ushay@ushay.com'),
  User.find_by_email('test@ushay.com'),
  User.find_by_email('test1@ushay.com'),
  User.find_by_email('test2@ushay.com')
]

movies = [
  Movie.find_by_name('Wonder Woman'),
  Movie.find_by_name('Tenet'),
  Movie.find_by_name('The Queens Gambit'),
  Movie.find_by_name('Pakistani Movie'),
  Movie.find_by_name('James Bond')
]

users.each do |user|
  movies.each do |movie|
    Like.where(likeable: movie, user: user).find_or_create_by!(
      likeable: movie,
      user: user
    )
  end
end