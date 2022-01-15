class SongsController < ApplicationController

  def index
    render json: Song.all
  end

  def create
    song = Song.new(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      year: params[:year]
    )
    song.save
    render json: song
  end

  def show
    song = Song.find(params[:id])
    render json: song
  end

  def update
    song = Song.find(params[:id])
    song.title = params[:title] || song.title
    song.artist = params[:artist] || song.artist
    song.album = params[:album] || song.album
    song.year = params[:year] || song.year
    song.save
    render json: song
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    render json: {message: "This song has been obliterated."}
    
  end



end
