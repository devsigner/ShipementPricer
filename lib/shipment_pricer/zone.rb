module ShipmentPricer
  class Zone
    attr_reader :name, :countries, :taxes
    @@zones = []
    
    def initialize(name, countries = [], taxes = [])
      @name, @countries, @taxes = name, countries, taxes
      @@zones << self
    end
    
    
    def find_country_by_code code
      @countries.find {|country| country.code == code.upcase}
    end
    
    def price weight
      @taxes.find{|taxe| taxe[0] >= (weight + MARGIN)}.last
    end
    
    
    class << self
      
      def find_by_name name
        @@zones.find {|zone| zone.name == name }
      end
      
      def count
        @@zones.length
      end
      
      def find_country_by_code code
        @@zones.each do |zone|
          country = zone.find_country_by_code( code )
        
          return country if country 
        end
      end
    
      def find_zone_by_country_code code
        @@zones.find {|zone| zone.find_country_by_code( code )}
      end
      
    end
    
  end
end