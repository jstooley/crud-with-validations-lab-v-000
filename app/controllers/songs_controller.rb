class SongsController < ApplicationController
  def show
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
    end

end
