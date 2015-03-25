class Member < ActiveRecord::Base
  belongs_to :member_types
  has_many :boards
end
