class Member < ActiveRecord::Base
  belongs_to :laboratories
  belongs_to :member_types
end
