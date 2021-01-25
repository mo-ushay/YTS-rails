class MoviesController < ApplicationController
  before_action :set_movie, only: [ :edit, :update, :destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :Error_404

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.includes(
      :created_by, movie_roles: [:actor], feedback: [:user]
    ).left_outer_joins(:likes, :ratings).select(
      'movies.*, CAST(AVG(ratings.value) AS DECIMAL(10,2)) AS rating,count(likes.likeable_id) as total_likes'
    ).find params[:id]
    @reviews = @movie.feedback.select { |item| item.type == 'Review' }
    @comments = @movie.feedback.select { |item| item.type == 'Comment' }
    @genres = Genre.all
    comment_ids = @comments.map(&:id)
    @total_likes_on_comments = Comment.where_by_ids(comment_ids).calc_total_likes
    @directors = @movie.movie_roles.select { |role| role.role_played == 'director' }
    @actors = @movie.movie_roles.select { |role| role.role_played == 'actor' }
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  def Error_404
    render template: 'errors/get_404', status: '404'
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
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
      params.fetch(:movie, {})
    end
end
