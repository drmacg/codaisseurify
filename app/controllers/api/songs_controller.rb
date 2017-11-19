class Api::SongsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    song = Song.new(song_params)

    artist = Artist.find(params[:artist_id])
    song.artist = artist

    if song.save
      render status: 201, json: {
        message: "Song successfully created",
        song: song
      }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  private

  def song_params
    params.require(:song).permit(:track_number, :name, :duration)
  end
end
