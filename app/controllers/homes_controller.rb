class HomesController < ApplicationController
  def index
    @total_downloads = Movie.take(3)
    @recent_releases = Movie.all
  end
end
