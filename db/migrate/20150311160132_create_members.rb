class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :pkid #학번
      t.string :device_token # 모바일 토큰
      t.string :password #비밀번호
      t.string :lost_password #잃어버렸을때 비밀번호 
      t.string :profile_img #프로필 이미지
      t.string :name #이름
      t.string :email #이메일
      t.string :mobile #핸드폰번호
      t.date :birth #생년월일
      t.integer :member_type_id #멤버 타입 eg.재학생
      t.integer :level # 권한
      t.integer :status #사용자 상태값
      
      t.timestamps
    end
  end
end
