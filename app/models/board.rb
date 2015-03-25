class Board < ActiveRecord::Base
  belongs_to :members
  belongs_to :board_types
  belongs_to :board_sub_types
end
