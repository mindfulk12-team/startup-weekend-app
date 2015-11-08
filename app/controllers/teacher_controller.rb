class TeacherController < ApplicationController
  def dashboard
    @students = @teacher.students.all
    @last_assignment = @teacher.assignments.last
  end

  def activity
    @activity = @teacher.activities.where(id: params[:id]).first
    @assignment = @activity.assignment
  end

  def activities
  end

  def students
    @students = @teacher.students.all
  end

  def student
    @student = @teacher.students.where(id: params[:id]).first
  end

  def assignments
    @assignments = @teacher.assignments.all
  end

  def assignment
    @assignment = @teacher.assignments.where(id: params[:id]).first
  end
end
