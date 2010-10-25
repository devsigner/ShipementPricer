require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

module ShipmentPricer
  describe "api draft" do
    it "does something" do
      ShipmentPricer.compute( "fr", 1.25 ).should == ( 10.05 )
    end
  end
end

