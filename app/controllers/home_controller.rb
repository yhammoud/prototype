class HomeController < ApplicationController
  layout :determine_layout

  def new
    render :home
  end

  def load_suggestions
    @suggestions = Course.all
    render json: @suggestions
  end

  private
  def determine_layout
    current_user ? "logged_in" : "application"
  end
end


