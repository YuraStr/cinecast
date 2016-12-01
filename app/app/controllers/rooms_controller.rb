class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    set_user
    @user.create_room(room_params)
    redirect_to root_path
  end

  def show
    set_user
  end

  private
  def set_user
    @user = User.find(params[:user_id])
  end

  def room_params
    params.require(:room).permit(:user_id, :name, :video_url)
  end
end
