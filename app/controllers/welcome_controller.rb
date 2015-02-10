class WelcomeController < ApplicationController
  def index
    @courses = Course.where(start_date: Date.today).order('start_time ASC')
    # binding.pry
    # puts 'END'
  end
end
