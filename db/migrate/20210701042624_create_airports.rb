class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
