class BoardType < ActiveRecord::Base
	has_many :boards
<<<<<<< HEAD
=======
	belongs_to :board_types
>>>>>>> master
end
