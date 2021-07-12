class Flight < ApplicationRecord
  belongs_to :arriving_flights_airport, class_name: "Airport", foreign_key: :departing_flights_id, inverse_of: :departing_flights

  belongs_to :departing_flights_airport, class_name: "Airport", foreign_key: :arriving_flights_id, inverse_of: :arriving_flights
end
