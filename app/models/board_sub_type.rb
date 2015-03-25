class BoardSubType < ActiveRecord::Base
	has_many :boards
	has_many :board_types
end
