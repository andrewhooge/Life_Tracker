class LifeEvent < ActiveRecord::Base
  validates :event, presence: true
  validates :year, numericality: true
  validates :description, presence: true, length: { maximum: 140 }

  belongs_to :person
end
