class Product
    attr_accessor :code, :description, :price, :quantity 

    def initialize(code, description, price, quantity)
        @code = code
        @description = description
        @price = price
        @quantity = quantity
    end

    def show_product()
        puts " "
        puts "Part Number: #{@code}"
        puts "Description: #{@description}"
        puts "Price: #{@price}"
        puts "Quantitiy: #{@quantity}"
        puts "____________________________________________________"
    end    

    def to_s
        return "#{@code},#{@description}, #{@price}, #{@quantity}"
    end
end