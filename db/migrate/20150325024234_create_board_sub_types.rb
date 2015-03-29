class CreateBoardSubTypes < ActiveRecord::Migration
  def change
    create_table :board_sub_types do |t|
<<<<<<< HEAD
		t.string :board_type_id # 게시판 카테고리
=======
		t.integer :board_type_id # 게시판 카테고리
>>>>>>> master
		t.string :title #게시판 제목
		t.integer :status #게시판 말머리 상태

      t.timestamps
    end
  end
end
