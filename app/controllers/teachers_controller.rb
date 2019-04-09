class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all.order("id ASC")
  end

  def show
    @teacher = Teacher.find(params[:id])
  end
end
