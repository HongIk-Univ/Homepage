class CreateHomeReservations < ActiveRecord::Migration
  def change
    create_table :home_reservations do |t|
      t.integer :pkid
      t.string :fk_reserverID
      t.integer :fk_equlpID
      t.date :start_date
      t.date :end_date
      t.integer :status
      t.timestamps
    end
  end
end
