$: << File.expand_path(File.dirname(__FILE__) + '/../lib')
# $: << File.expand_path(File.dirname(__FILE__) + '/../lib/shipment_pricer')

require "shipment_pricer"

@fake_zone = ShipmentPricer::Zone.new( "F" )
@fake_zone.countries << ShipmentPricer::Country.new("France", "FR", @fake_zone)
@fake_zone.taxes << [0.25, 6.70 ]
@fake_zone.taxes << [0.50, 7.60 ] 
@fake_zone.taxes << [1   , 9.10 ] 
@fake_zone.taxes << [2   , 10.05] 
@fake_zone.taxes << [3   , 11.00] 
@fake_zone.taxes << [4   , 11.00] 
@fake_zone.taxes << [5   , 12.90] 
@fake_zone.taxes << [6   , 12.90] 
@fake_zone.taxes << [7   , 14.80] 
@fake_zone.taxes << [8   , 14.80] 
@fake_zone.taxes << [9   , 14.80] 
@fake_zone.taxes << [10  , 17.65] 
             