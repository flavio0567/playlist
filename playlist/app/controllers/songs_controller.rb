class SongsController < ApplicationController
 def index
    @songs = Song.all
  end

  def create
    song = Song.new song_params
    unless song.save
      flash[:errors] = song.errors.full_messages
    end
    redirect_to songs_path
  end

  def show
    @song = Song.find params[:id]

    @users = @song.users.distinct                           
  end

  def edit
    @song = Song.find(params[:id])
  end

  def destroy
    @song = Song.find(params[:song_id])
    @song.destroy
    redirect_to songs_path
  end

  private
    def song_params
      params.permit(:title, :artist).merge(user: current_user)
    end
end
