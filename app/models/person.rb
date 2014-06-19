class Person < ActiveRecord::Base
  validates :name, presence: true

  has_many :schools_attended
  has_many :life_events
end
