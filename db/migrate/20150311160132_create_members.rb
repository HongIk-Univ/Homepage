class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :pkid #학번
      t.string :device_token
      t.string :password
      t.string :profile_img
      t.string :name
      t.string :email
      t.string :mobile
      t.date :birth
      t.integer :member_type_id
      t.integer :level
      t.integer :status
      t.timestamps
    end
  end
end
