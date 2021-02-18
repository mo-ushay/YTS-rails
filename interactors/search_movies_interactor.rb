class SearchMoviesInteractor
  include Interactor

  def call
    filtering
  end

  def filtering
    if conditions.empty?
      Movies.all
    else
      'Movies.' << condition_clauses.join('.').to_s
    end
  end

  def conditions
    [conditions_clauses.join('.'), *conditions_options]
  end

  def conditions_clauses
    conditions_parts.map { |condition| condition.first }
  end

  def conditions_parts
    private_methods(false).grep(/_conditions/).map { |m| send(m) }.compact
  end

  def conditions_options
    conditions_parts.map { |condition| condition[1..-1] }.flatten
  end

  private

  def start_year_conditions
    year = conext.year.split('-') unless year.nil?
    "search_on_starting_year(#{context.year[0]})" unless year.nil? || year.empty?
  end

  def ending_year_conditions
    ending_year = context.year[context.year.length - 1] unless context.year.nil? || context.year.empty?
    "search_on_ending_year(#{ending_year})"
  end

  def genre_conditions
    "search_genre(#{context.genre})"
  end

  def rating_conditions
    "search_rating(#{context.rating})"
  end

  def language_conditions
    "search_language(#{context.language})"
  end
end
