class MoviePa2sController < ApplicationController
  before_action :set_movie_pa2, only: %i[ show edit update destroy ]

  # GET /movie_pa2s or /movie_pa2s.json
  def index
    @movie_pa2s = MoviePa2.all
  end

  # GET /movie_pa2s/1 or /movie_pa2s/1.json
  def show
  end

  # GET /movie_pa2s/new
  def new
    @movie_pa2 = MoviePa2.new
  end

  # GET /movie_pa2s/1/edit
  def edit
  end

  # POST /movie_pa2s or /movie_pa2s.json
  def create
    @movie_pa2 = MoviePa2.new(movie_pa2_params)

    respond_to do |format|
      if @movie_pa2.save
        format.html { redirect_to movie_pa2_url(@movie_pa2), notice: "Movie pa2 was successfully created." }
        format.json { render :show, status: :created, location: @movie_pa2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_pa2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_pa2s/1 or /movie_pa2s/1.json
  def update
    respond_to do |format|
      if @movie_pa2.update(movie_pa2_params)
        format.html { redirect_to movie_pa2_url(@movie_pa2), notice: "Movie pa2 was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_pa2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_pa2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_pa2s/1 or /movie_pa2s/1.json
  def destroy
    @movie_pa2.destroy

    respond_to do |format|
      format.html { redirect_to movie_pa2s_url, notice: "Movie pa2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_pa2
      @movie_pa2 = MoviePa2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_pa2_params
      params.require(:movie_pa2).permit(:title, :rating, :description, :release_date)
    end
end
