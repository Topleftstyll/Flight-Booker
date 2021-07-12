class AddArringFlightsToAirports < ActiveRecord::Migration[6.1]
  def change
    add_reference :airports, :arriving_flights, foreign_key: {to_table: :flights}
  end
end
