require "shipment_pricer/zone"
require "shipment_pricer/country"
require "shipment_pricer/loader"

module ShipmentPricer
  MARGIN = 0.1
  
  
  def self.compute code, weight
    Zone.find_zone_by_country_code( code ).price(weight)
  end
  
end


