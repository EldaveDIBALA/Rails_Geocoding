class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def geocode
    if address.present?
      response = Geocoder.search(address)
      puts "API Response: #{response.inspect}"
      if response.any?
        self.latitude, self.longitude = response.first.coordinates
      else
        errors.add(:address, "could not be geocoded")
      end
    end
  end
end
