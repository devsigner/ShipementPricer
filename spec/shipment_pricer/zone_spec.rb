require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module ShipmentPricer
  describe Zone do
    it "should find by code with upcase" do
      Zone.find_by_code("FR").name.should == "France"
    end
    
    it "should find by code with downcase" do
      Zone.find_by_code("fr").name.should == "France"
    end
  end
end