class Program < ActiveRecord::Base
  validates :program_name, presence: true, length: { minimum: 1, maximum: 25 }
  has_many :exercise_programs, dependent: :destroy
  has_many :exercises, through: :exercise_programs
  belongs_to :user
  validates :user_id, presence: true
  serialize :day_of_week, Array


end
