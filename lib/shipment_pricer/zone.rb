module ShipmentPricer
  class Zone
    attr_reader :name, :countries
    @@zones = []
    
    def initialize(name, countries = [])
      @name, @countries = name, countries
      @@zones << self
    end
    
    def find_by_code code
      @countries.find {|country| country.code == code.upcase}
    end
    
    def self.find_by_code code
      @@zones.each do |zone|
        country = zone.find_by_code( code )
        
        return country if country 
      end
    end
    
  end
end