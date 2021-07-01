class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.Airport :from_airport
      t.Airport :to_airport
      t.datetime :date
      t.integer :duration

      t.timestamps
    end
  end
end
