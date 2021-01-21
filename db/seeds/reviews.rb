random_review = ('A'...'Z').to_a.shuffle.first(35).join

movies = [
  Movie.find_by_name('Wonder Woman'),
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
    Review.where(movie_id: movie.id, user_id: user.id).find_or_create_by!(
      user: user,
      movie: movie,
      content: random_review
    )
  end
end