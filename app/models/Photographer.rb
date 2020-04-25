class Photographer
    attr_accessor :name, :customer, :order 

    @@all=[]

    def initialize(name)
        @name=name 
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def get_orders
        Order.all.select do |x| x.photographer == self 
        end 
    end 

    def customer_list
        get_orders.map do |x| x.customer end.uniq 
    end 
end 
