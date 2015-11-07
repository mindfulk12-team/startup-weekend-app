class Assignment < ActiveRecord::Base
  belongs_to(:teacher)

  def done_students
    Student
  end
end
