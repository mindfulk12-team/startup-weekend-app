class StudentController < ApplicationController
  def dashboard
    assignments = @student.teacher.assignments
    @done_assignments = []
    @to_do = []

    assignments.each do |assignment|
      if @student.has_done(assignment)
        @done_assignments.push(assignment)
      else
        @to_do.push(assignment)
      end
    end
  end

  def work
    @assignment = Assignment.find(params[:id])
  end

  def new_work
    @assignment = Assignment.find(params[:id])
    Activity.create(
      content: @assignment.format_content(params[:data]),
      assignment: @assignment,
      student: @student
    )
  end

end
