class Course < ActiveRecord::Base
  belongs_to :classroom
  has_many :bookings
end
