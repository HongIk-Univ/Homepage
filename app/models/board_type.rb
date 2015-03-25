class BoardType < ActiveRecord::Base
	has_many :boards
	belongs_to :board_types
end
