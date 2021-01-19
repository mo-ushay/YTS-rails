class HomesController < ApplicationController
  def index
    @movies_on_downloads = Movie.order_by_downloads.take(4)
    @recent_releases = Movie.recent_releases.take(8)
  end
end
