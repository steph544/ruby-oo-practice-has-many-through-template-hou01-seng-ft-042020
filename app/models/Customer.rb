class Customer
    attr_accessor :name 

    @@all= []
    def initialize(name)
        @name= name  
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def place_order(number, date, total, photographer)
        Order.new(number, date, total, self, photographer)
    end 

    def find_photog
        get_order.map do |x| x.photographer 
        end 
    end 
    
    def get_order
        Order.all.select do |x| x.customer == self 
        end 
    end


end 