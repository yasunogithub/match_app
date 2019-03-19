class RoomsController < ApplicationController
  before_action :authenticate_user!

  def show
    @room = Room.find(params[:id])
    @entry = Entry.find_by(room_id: params[:id])
    @messages = @room.messages.order("id DESC")
    # @messages = Message.all
    @user = User.find_by(id: @entry.user_id)
    @teacher = Teacher.find_by(id: @entry.teacher_id)
    if current_user
      @sent_user = User.find_by(id: current_user.id)
    else
      @sent_user = Teacher.find_by(id: @entry.teacher_id)
    end
      
  end
  
  def create
    @room = find_room
    if @room
      redirect_to "/rooms/#{@room.id}}"
    else
      @room = Room.create
      @entry = Entry.create(:room_id => @room.id, :user_id => current_user.id, :teacher_id => params[:teacher_id])
      redirect_to "/rooms/#{@room.id}"
    end
  end

  private
    # def logged_in_user
    #   unless logged_in?
    #     session[:callback] = rooms_show_path
    #     return redirect_to root_path, flash: {danger: "ログインしてください。"}
    #   end
    # end

    def find_room
      @entry = Entry.find_by(:user_id => current_user.id, :teacher_id => params[:teacher_id])
      if @entry
        @room =Room.find_by(id: @entry.room_id)
        return @room
      end
      # @rooma = Room.find_by(name: "room@#{id}@#{session[:user_id]}")
      # @roomb = Room.find_by(name: "room@#{session[:user_id]}@#{id}")
      # @r = @rooma || @roomb 
      # return @r 
    end 
end
