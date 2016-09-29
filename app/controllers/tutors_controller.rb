class TutorsController < ApplicationController
  layout :determine_layout

  def new
    @subjects = Subject.all
    render :become_tutor
  end

  def courses_for_department
    @subjects = Subject.all
    @department = Subject.find(params[:id])
    @courses = Course.where(subject_id: @department.id)
    render :become_tutor
  end

  private
  def determine_layout
    current_user ? "logged_in" : "application"
  end
end
