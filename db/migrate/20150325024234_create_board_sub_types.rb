class CreateBoardSubTypes < ActiveRecord::Migration
  def change
    create_table :board_sub_types do |t|
		t.string :board_type_id # 게시판 카테고리
		t.string :title #게시판 제목
		t.integer :status #게시판 말머리 상태

      t.timestamps
    end
  end
end
