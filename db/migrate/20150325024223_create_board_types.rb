class CreateBoardTypes < ActiveRecord::Migration
  def change
    create_table :board_types do |t|
		t.string :title #게시판 카테고리 
		t.integer :status #게시판 카테고리 상태 eg. 활성화,비활성화

      t.timestamps
    end
  end
end
