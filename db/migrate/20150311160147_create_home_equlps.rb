class CreateHomeEqulps < ActiveRecord::Migration
  def change
    create_table :home_equlps do |t|
      t.integer :pkid
      t.string :equi_id
      t.string :fk_adminID
      t.string :name
      t.text :description
      t.string :equlp_img
      t.integer :total_count
      t.integer :rental_count
      t.integer :status
      t.timestamps
    end
  end
end
