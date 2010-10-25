require "shipment_pricer/zone"
require "shipment_pricer/country"

module ShipmentPricer
  
  def self.compute code, weight
    Country.find_by_code( code )
  end
  
end


