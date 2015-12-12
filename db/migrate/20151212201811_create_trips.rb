class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.date :date
      t.string :time
      t.string :driver
      t.string :start_point
      t.string :destination
      t.integer :number_of_children

      t.timestamps null: false
    end
  end
end
