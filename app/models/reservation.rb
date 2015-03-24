class HomeReservation < ActiveRecord::Base
  has_many :home_equlps
  belongs_to :home_member
end
