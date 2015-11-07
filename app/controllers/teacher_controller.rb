class TeacherController < ApplicationController
  def dashboard
    @students = @teacher.students.all
    # @last_assignment = @teacher.assignments.last
    @last_assignment = nil
  end

  def activities
  end

  def students
    @students = @teacher.students.all
  end

  def student
    @student = @teacher.students.where(id: params[:id]).first
  end
end
