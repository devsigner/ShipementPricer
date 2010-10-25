require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module ShipmentPricer
  describe Zone do
    before(:each) do
      @country = Zone.find_country_by_code("FR")
      @zone = Zone.find_zone_by_country_code("FR")
    end
    
    it "should find by code with upcase" do
      @country.name.should == "France"
    end
    
    it "should find by code with downcase" do
      Zone.find_country_by_code("fr").name.should == "France"
    end
    
    it "should find zone by country code" do
      @zone.name.should == "F"
    end
    
    it "should compute price for a given weight" do
      @zone.price(1.25).should == 10.05
    end
  end
end