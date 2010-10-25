require "shipment_pricer/zone"
require "shipment_pricer/country"

module ShipmentPricer
  MARGIN = 0.2
  
  
  def self.compute code, weight
    Zone.find_zone_by_country_code( code ).price(weight)
  end
  
end


