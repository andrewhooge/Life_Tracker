class SchoolsAttended < ActiveRecord::Base
  validates :school, presence: true
  validates :beginning_year, numericality: true
  validates :beginning_year, numericality: true
end
