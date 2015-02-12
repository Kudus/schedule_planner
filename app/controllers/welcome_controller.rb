class WelcomeController < ApplicationController
  skip_authorization_check
  def index
    @courses = Course.where(start_date: Date.today).order('start_time ASC')
    # binding.pry
    # puts 'END'
  end
end
