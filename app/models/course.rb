class Course < ActiveRecord::Base
  belongs_to :mentor
  has_many :students
  validates :name, presence: true, uniqueness: true
end
