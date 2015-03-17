class CreateHomeMembers < ActiveRecord::Migration
  def change
    create_table :home_members do |t|
      t.string :pkid
      t.string :devic_token
      t.integer :fk_labID
      t.string :password
      t.string :profile_img
      t.string :name
      t.string :email
      t.string :mobile
      t.date :birth
      t.integer :type
      t.integer :level
      t.integer :status
      t.timestamps
    end
  end
end
