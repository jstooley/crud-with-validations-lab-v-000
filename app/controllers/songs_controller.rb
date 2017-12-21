class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = set_song!
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
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
