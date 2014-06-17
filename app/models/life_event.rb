class LifeEvent < ActiveRecord::Base
  validates :event, presence: true
  validates :year, numericality: true
  validates :description, length: { maximum: 140 }
end
