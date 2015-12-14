class Program < ActiveRecord::Base
  validates :program_name, presence: true, length: { minimum: 1, maximum: 25 }
  has_many :exercise_programs
  has_many :exercises, through: :exercise_programs
end
