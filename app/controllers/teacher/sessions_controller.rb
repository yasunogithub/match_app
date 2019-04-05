class Teacher::SessionsController < ApplicationController
  def new
  end

  def create
    @teacher = Teacher.find_by(email: params[:session][:email])

    if @teacher && @teacher.authenticate(params[:session][:password])
      log_in(@teacher)
      redirect_to rooms_path, notice: "teacherとしてログインしました。"
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "ログアウトしました。"
  end
end
