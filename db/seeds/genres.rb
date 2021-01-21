# genres = {
#   comedy: Genre.find_by_name('Comedy'),
#   action: Genre.find_by_name('Action'),
#   horror: Genre.find_by_name('Horror'),
#   sci_fi: Genre.find_by_name('Sci-fi'),
#   thriller: Genre.find_by_name('Thriller'),
#   adventure: Genre.find_by_name('Adventure')
# }

Genre.where(category: 'Comedy').find_or_create_by!(category: 'Comedy')
Genre.where(category: 'Action').find_or_create_by!(category: 'Action')
Genre.where(category: 'Horror').find_or_create_by!(category: 'Horror')
Genre.where(category: 'Sci_Fi').find_or_create_by!(category: 'Sci_Fi')
Genre.where(category: 'Thriller').find_or_create_by!(category: 'Thriller')
Genre.where(category: 'Adventure').find_or_create_by!(category: 'Adventure')