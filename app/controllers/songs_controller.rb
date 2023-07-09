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
end
