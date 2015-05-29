class Testimonial < ActiveRecord::Base
  validates :user_name, :feedback, presence: true
  before_save :censorship

  private

  def censorship
    self.feedback = self.feedback.downcase.gsub! /\bshit\b/, 'fun'
  end
end