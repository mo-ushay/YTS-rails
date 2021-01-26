class MoviesController < ApplicationController
  before_action :set_movie, only: [ :edit, :update, :destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
    searching_year = params[:release_year][0] unless params[:release_year].nil?
    genre = params[:genre][0] unless params[:genre].nil?
    language = params[:language][0] unless params[:language].nil?
    quality = params[:quality][0] unless params[:quality].nil?
    rating = params[:rating_bound][0] unless params[:rating_bound].nil?
    order_by = params[:orders_filter][0] unless params[:orders_filter].nil?
    @movies = Movie.search_title(params[:title]).search_language(language).search_year(searching_year).search_video_quality(quality).search_genre(
      genre
    ).search_rating(rating).order_on_filter(order_by).includes(:profile_photo)
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.includes(
      :profile_photo, :created_by, movie_roles: [:actor], feedback: [:user] 
    ).left_outer_joins(:likes, :ratings).select(
      'movies.*, CAST(AVG(ratings.value) AS DECIMAL(10,1)) AS rating, count(likes.likeable_id) * 6 as total_likes'
    ).find params[:id]
    @reviews = @movie.feedback.select { |item| item.type == 'Review' }
    @comments = @movie.feedback.select { |item| item.type == 'Comment' }
    @directors = @movie.movie_roles.select { |role| role.role_played == 'director' }
    @actors = @movie.movie_roles.select { |role| role.role_played == 'actor' }
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    @movie.build_profile_photo
  end

  # GET /movies/1/edit
  def edit
  end

  def render_404
    render file: "#{Rails.root}/public/404", status: :not_found
  end

  # POST /movies
  # POST /movies.json
  def create
    parameters = movie_params
    @movie = Movie.new(parameters) 
    @movie.created_by = current_user

    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render :new, notice: 'Not Saved!'
    end
 end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def movie_params
    params.fetch(:movie, {}).permit(:name, :release_date, :video_quality, :synopsis, :genres, :language)
    params.fetch(:movie, {}).permit(:name, :release_date, :video_quality, :synopsis, :genres, :language, profile_photo_attributes: [:path])     
  end
end
