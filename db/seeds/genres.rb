# genres = {
#   comedy: Genre.find_by_name('Comedy'),
#   action: Genre.find_by_name('Action'),
#   horror: Genre.find_by_name('Horror'),
#   sci_fi: Genre.find_by_name('Sci-fi'),
#   thriller: Genre.find_by_name('Thriller'),
#   adventure: Genre.find_by_name('Adventure')
# }

Genre.where(name: 'comedy').find_or_create_by!(name: 'Comedy')
Genre.where(name: 'action').find_or_create_by!(name: 'Action')
Genre.where(name: 'horror').find_or_create_by!(name: 'Horror')
Genre.where(name: 'sci_fi').find_or_create_by!(name: 'Sci-fi')
Genre.where(name: 'thriller').find_or_create_by!(name: 'Thriller')
Genre.where(name: 'adventure').find_or_create_by!(name: 'Adventure')