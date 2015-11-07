class Student < ActiveRecord::Base
  belongs_to(:teacher)

  def score
    rand(100)
  end

  def has_done(assignment=self.teacher.assignments.last)
    # self.activities.where(assignment: assignment).count > 0
    rand(100) > 30
  end
end
