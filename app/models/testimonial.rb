class Testimonial < ActiveRecord::Base
  validates :user_name, presence: true
end
