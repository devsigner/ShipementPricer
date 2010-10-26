module ShipmentPricer
  class Loader
    def initialize(path)
      @db = YAML.load_file( path )
    end
    
    def all
      @db["zones"].each do |zone_h|
        z = Zone.new zone_h["name"]
        zone_h["countries"].each do |country|
          z.countries << Country.new(country["name"], country["code"], z)
        end
      end
    end
    
  end
end