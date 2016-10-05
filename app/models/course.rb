class Course < ApplicationRecord
  belongs_to :subject
  has_and_belongs_to_many :tutors

  def self.search(term)
    where('LOWER(title) LIKE :term OR LOWER(author) LIKE :term', term: "%#{term.downcase}%")
  end
end
