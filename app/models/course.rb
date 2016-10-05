class Course < ApplicationRecord
  belongs_to :subject
  has_and_belongs_to_many :tutors

end
