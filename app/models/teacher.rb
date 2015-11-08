class Teacher < ActiveRecord::Base
  has_many(:students)
  has_many(:assignments)
  has_many(:activities, through: :students)
end
