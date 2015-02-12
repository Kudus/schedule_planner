class CoursesController < ApplicationController
  skip_authorization_check :only => [:index, :show]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  def index
    @courses = Course.where("start_date >= ?", Date.today).order('start_date ASC')
  end

  def show
    
  end

  def new
    @course = Course.new
  end

  def edit
    
  end

  def create
    @course = Course.create(course_params)
    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path
  end

  private
  def set_course
      @course = Course.find(params[:id])
  end
  
  def course_params
    params.require(:course).permit(:title, :description, :level, :classroom_id, :start_date, :end_date, :start_time, :end_time)
  end

end
