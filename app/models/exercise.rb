class Exercise < ActiveRecord::Base
  validates :exercise_name, presence: true,
                    length: { minimum: 1 }
end
