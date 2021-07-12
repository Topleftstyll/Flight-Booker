class AddDepartingFlightsToAirport < ActiveRecord::Migration[6.1]
  def change
    add_reference :airports, :departing_flights, foreign_key: {to_table: :flights}
  end
end
