require "tty-prompt"
prompt = TTY::Prompt.new
require 'artii'
artii = Artii::Base.new
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

puts artii.asciify('TELEMAX')

# select from a menu 
user_input = prompt.select("What would you like to do?") do |menu|
    menu.choice('search')
    menu.choice('full product list')
    menu.choice('create product')
end

if user_input == 'create product'
    puts "enter the code"
    code_input = gets.chomp.to_i

    puts "enter the description"
    desc_input = gets.chomp.to_s
    
    puts "enter the sale price"
    price_input = gets.chomp.to_f
      
    puts "enter the quantity on hand"
    qty_input = gets.chomp.to_i

    puts "enter its code"
    code_input = gets.chomp.to_i

    puts "The new product:"
    puts "Part Number: #{code_input}"
    puts "Description: #{desc_input}"
    puts "Price: #{price_input}"
    puts "Quantitiy: #{qty_input}"
    
    #append to the csv database
    File.open("product_list.csv", 'a') { |file| file.write("\n#{code_input}, #{desc_input}, #{price_input}, #{qty_input}") }
    puts "Product added to database"

end

if user_input == 'full product list'
    File.open('product_list.csv').each do |line|
        product = line.chomp.split(",")
        product_list.store(product[0], Product.new(product[0], product[1], product[2], product[3]))
    end
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
    product_list[search_input].show_product()

        product_list.has_key?(search_input)
        puts product_list[search_input].code

        puts "enter code"
        new_code = gets.chomp
        product_list[search_input].code = new_code

        puts "enter new description"
        new_desc = gets.chomp
        product_list[search_input].description = new_desc

        puts "enter new price?"
        new_price = gets.chomp
        product_list[search_input].price = new_price
    
        puts "enter new quantity"
        new_qty = gets.chomp
        product_list[search_input].quantity = new_qty


        puts "changes made to the product:"
        puts "Part Number: #{new_code}"
        puts "Description: #{new_desc}"
        puts "Price: #{new_price}"
        puts "Quantitiy: #{new_qty}"


    # show the selected product key and values
    product_list[search_input].show_product()

end