require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

module ShipmentPricer
  describe "api draft" do
    
    [[1.25, 10.05],[1.0, 10.05]].each do |pair|
      
      it "should compute Shipment Price for FR and #{pair.first}g" do
        ShipmentPricer.compute( "fr", pair.first ).should == ( pair.last )
      end
      
    end
    
  end
end

