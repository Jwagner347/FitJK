class Exercise < ActiveRecord::Base
  validates :exercise_name, presence: true,
                    length: { minimum: 1 }
  has_many :exercise_programs
  has_many :programs, through: :exercise_programs
end
