class HomeMember < ActiveRecord::Base
  has_many :home_boards
  has_many :home_reservations
end
