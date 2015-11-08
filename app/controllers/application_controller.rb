class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_filter :set_teacher, :set_student

  def set_teacher
    @teacher = Teacher.first
  end

  def set_student
    @student = Student.first
  end
end
