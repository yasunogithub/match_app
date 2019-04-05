class TeachersController < ApplicationController
  before_action :correct_teacher, only: [:edit, :update]

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
    current_teacher
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    if @teacher.update_attributes(teacher_params)
      flash[:success] = "Profile updated"
      redirect_to @teacher
    else
      render 'edit'
    end
  end

  private
    def teacher_params
      params.require(:teacher).permit(:name, :age, :email, :skype_id, :university, :subject, :reference_book, :etc, :password, :password_confirmation)
    end

    def correct_teacher
      @teacher = Teacher.find(params[:id])
      unless current_teacher == @teacher
        redirect_to root_path
      end
    end
end
