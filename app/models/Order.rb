class Order

    attr_accessor :number, :date, :total, :customer, :photographer 
        @@all = []
    
        def initialize(number, date, total, customer, photographer)
            @number=number
            @date=date
            @total=total 
            @customer=customer
            @photographer=photographer
            @@all << self 
        end 
    
        def self.all 
            @@all
        end 
    
    end 