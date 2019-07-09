class Student < ApplicationRecord
  validates :name, :student_id, :mail, presence: true
end
