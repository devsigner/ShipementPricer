module ShipmentPricer
  class Country
    attr_reader :name, :code, :zone
    
    def initialize( name, code, zone )
      @name = name
      @code = code
      @zone = zone
    end
    
  end
  
end