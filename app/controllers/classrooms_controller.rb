class ClassroomsController < ApplicationController
  before_action :authenticate_user!
  authorize_resource
  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.create(classroom_params)
    if @classroom.save
      redirect_to classrooms_path
    else
        render 'new'
    end
  end

  def update
    @classroom = Classroom.find(params[:id])
    if @classroom.update(classroom_params)
      redirect_to classrooms_path
    else
      render 'edit'
    end
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy
    redirect_to classrooms_path
     
  end

  private
  def classroom_params
    params.require(:classroom).permit(:room, :floor)
  end
end
