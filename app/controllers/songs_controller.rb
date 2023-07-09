class SongsController < ApplicationController
  def index
    @songs = Song.all
    render template: "songs/index"
  end

  def create
    @song = Song.create(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      year: params[:year],
    )
    render template: "songs/show"
  end

  def show
    @song = Song.find_by(id: params[:id])
    render template: "songs/show"
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(
      title: params[:title] || @song.title,
      artist: params[:artist] || @song.artist,
      album: params[:album] || @song.album,
      year: params[:year] || @song.year,
    )
    render template: "songs/show"
  end

  def destroy
    @song = Song.find_by(id: params[:id])
    @song.destroy

    render json: { message: "You no longer like this song : (" }
  end
end
