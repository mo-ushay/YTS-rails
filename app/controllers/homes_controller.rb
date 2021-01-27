class HomesController < ApplicationController
  def index
    @total_downloads = Movie.total_downloads.take(4)
    @recent_releases = Movie.recent_releases.take(6)
  end
end
