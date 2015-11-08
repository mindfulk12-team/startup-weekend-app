class Assignment < ActiveRecord::Base
  belongs_to(:teacher)
  has_many(:activities)

  def format_content(content)
    if self.assignment_type == 'journal'
      return { text: content }
    elsif self.assignment_type == 'emotion_cloud'
      return content
    end
  end
end
