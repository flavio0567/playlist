class JoinsController < ApplicationController

  def create
    Join.create join_params
    redirect_to songs_path
  end  

  def destroy
    @song = Song.find(params[:@song_id])
    @join = Join.where(user: current_user, song: @song)
    @join.destroy(@join)
    redirect_to songs_path
  end

  private
    def join_params
      params.require(:join).permit(:song_id).merge(user: current_user)
    end
end
