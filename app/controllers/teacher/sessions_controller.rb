class Teacher::SessionsController < ApplicationController
  def new
  end

  def create
    teacher = Teacher.find_by(name: params[:session][:name])

    if teacher
      log_in(teacher)
      redirect_to rooms_path, notice: "teacherとしてログインしました。"
    else
      reder :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "ログアウトしました。"
  end
end
