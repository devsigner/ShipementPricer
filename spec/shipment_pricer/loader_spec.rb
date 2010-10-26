require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
module ShipmentPricer

  describe Loader do
    before(:all) do
      @path = File.expand_path( File.dirname(__FILE__) + '/../data/db.yaml' )
      @loader = Loader.new(@path)
    end
    
    it "should load zones" do
      lambda do
        @loader.all
      end.should change { Zone.count }.by_at_least(2)
    end

    describe "Zone OM" do
      before(:all) do
        @loader.all
      end
      it "should load zone OM" do
        Zone.find_by_name( "OM" ).should_not be_nil
      end
    
      it "should find Martinique in OM Zone" do
        Zone.find_zone_by_country_code("MA").name.should == "OM"
      end
    end
  end
end
