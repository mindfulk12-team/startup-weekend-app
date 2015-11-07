class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :set_teacher

  def set_teacher
    @teacher = Teacher.first
  end
end
