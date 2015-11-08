class Student < ActiveRecord::Base
  belongs_to(:teacher)
  has_many(:activities)

  def score
    rand(100)
  end

  def has_done(assignment)
    self.activities.where(assignment: assignment).count > 0
  end

  def get_activity(assignment)
    self.activities.where(assignment: assignment).first
  end
end
