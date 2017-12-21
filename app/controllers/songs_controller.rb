class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = set_song!
  end

  def new
    @song = Song.new
  end

  def edit
    @song = set_song!
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def update
    @song = set_song!
    if @song.update(song_params)
      redirect_to song_path9@song
    else
      render :edit
    end
  end

  def delete
  end

  private

    def set_song!
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:title, :release_year, :released, :genre, :artist_name)
    end

end
