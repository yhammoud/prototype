class TutorsController < ApplicationController
  layout :determine_layout

  def new
    @subjects = Subject.all
    render :become_tutor
  end

  def tutor_course_signup
    render :tutor_course_signup
  end

  def courses_for_department
    @subjects = Subject.all
    @department = Subject.find(params[:id])
    @courses = Course.where(subject_id: @department.id)
    render :become_tutor
  end


  def view_tutors_for_course
    tutor_course = TutorCourse.where(course_id: params[:id])
    @tutors = []
    tutor_course.each do |tutor|
      @tutors.push(Tutor.find(tutor.tutor_id))
    end
    render :view_tutors_for_course
  end

  def delete_course_for_tutor
    tutor_id = Tutor.find_by_user_id(current_user.id).id
    TutorCourse.delete_all(:course_id => params[:course_id] ,:tutor_id => tutor_id)
    redirect_to '/courses_for_tutor'
  end

  def signup_tutor
    @user = User.find(current_user.id)
    if Tutor.where(user_id: @user.id).first.nil?
      @tutor = Tutor.create(user_id: @user.id)
    end
    course = params[:course][:id].to_i
    @tutor = Tutor.where(user_id: @user.id).first
    tutor_course = TutorCourse.create(tutor_id: @tutor.id, course_id: course)

    redirect_to :become_a_tutor
  end


  private
  def determine_layout
    current_user ? "logged_in" : "application"
  end
end
