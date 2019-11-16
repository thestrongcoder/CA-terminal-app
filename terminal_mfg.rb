require "tty-prompt"
prompt = TTY::Prompt.new
product_list = {}
# quit = false

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

end

# open/read csv database
line_num=0
File.open('product_list.csv').each do |line|
  product = line.chomp.split(",")
  product_list.store(product[0], Product.new(product[0], product[1], product[2], product[3]))
end

# select from a menu 
user_input = prompt.select("What would you like to do?") do |menu|
    menu.choice('search')
    menu.choice('full product list')
    menu.choice('create product')
end
if user_input == 'full product list'
    product_list.each_value do |product|
    product.show_product
    end
end 
# search products
if user_input == 'search'
    search_product = %w()
    search_input = prompt.select('Search for a product', filter: true, require: true) do |item|
        product_list.each_value do |product|
            item.choice(product.description, product.code)
        end
    end
    # show the selected product key and values
    puts product_list[search_input].show_product()
end



