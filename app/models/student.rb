class Student < ApplicationRecord
  validates :student_id, presence: true,
            length: { is:10 },
            format: { with: /\A1111\d+\z/ },
            format: { with: /\A1112\d+\z/ }



  validates :name, presence: true


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :mail,
            presence: true,
            format: { with: VALID_EMAIL_REGEX }

end
