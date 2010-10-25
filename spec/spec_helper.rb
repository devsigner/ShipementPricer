$: << File.expand_path(File.dirname(__FILE__) + '/../lib')
# $: << File.expand_path(File.dirname(__FILE__) + '/../lib/shipment_pricer')

require "shipment_pricer"

@fake_zone = ShipmentPricer::Zone.new( "F" )
@fake_zone.countries << ShipmentPricer::Country.new("France", "FR", @fake_zone)