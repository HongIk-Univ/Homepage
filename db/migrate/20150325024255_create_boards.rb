class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
		t.string   :member_id #회원 번호
		t.string  :writer #작성자
		t.string  :board_type_id #게시판 카테고리
		t.integer  :board_sub_type_id #게시판 말머리 eg [학과]
		t.datetime :date	#글쓴날짜
		t.string   :title	#제목
		t.text     :text	#내용
		t.integer  :read_count, :default => 0 #게시글 읽은 수 
		t.integer  :comment_count, :default => 0 #코멘트 갯수
		t.integer  :down_count, :default => 0 #첨부파일다운로드수
		t.integer  :like_count, :default => 0 #좋아요 갯수
		t.string   :attachment #첨부파일
		t.string   :img_cover  #커버 이미지 링크
		t.string   :img_thumbnail #썸네일 이미지 링크
		t.integer  :status #상태
		
      t.timestamps
    end
  end
end
