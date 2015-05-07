class Student < ActiveRecord::Base
  validates :github_user, presence: true, uniqueness: true
  belongs_to :course
  has_one :mentor, through: :course
end
