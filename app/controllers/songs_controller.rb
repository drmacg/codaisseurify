class SongsController < ApplicationController
  def create
    song_params = params.require(:song).permit(:track_number, :name, :duration)
    @song = Song.new(song_params)

    artist = Artist.find(params[:artist_id])
    @song.artist = artist
    @song.save

    redirect_to @song.artist, notice: "Song created."
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to @song.artist, notice: "Song deleted."
  end
end
