

# global variable declarations
require 'artii'
require "tty-prompt"
require_relative "./product"
require_relative "./utilities"

artii = Artii::Base.new
prompt = TTY::Prompt.new
product_list = {}
quit = false


def load_product_list
    products = {}
    # open/read csv database
    File.open('product_list.csv').each do |line|
        product = line.chomp.split(",")
        products.store(product[0], Product.new(product[0], product[1], product[2], product[3]))
    end
    return products
end

def write_product_to_file(product, file)
    #append to the csv database
    File.open(file, 'a') { |file| file.write("\n"+product.to_s) }
    puts "Product successfully added to database"
end

def write_product_list(product_list, file)
    # create a string for each product hash and append it to file
    product_list.each_value do |product|
        write_product_to_file(product, file)
    end
end


def create_product(product_list)
    puts "enter the code"
    code = gets.chomp.to_i

    puts "enter the description"
    description = gets.chomp.to_s
    
    puts "enter the sale price"
    price = gets.chomp.to_f
    
    puts "enter the quantity on hand"
    quantity = gets.chomp.to_i

    # create a new product and add to product_list
    new_product = Product.new(code, description, price, quantity)
    product_list.store(new_product[:code],new_product)
    
    #append to the csv database
    write_product_to_file(new_product, "product_list.csv")

    new_product.show_product
end

def search_product(product_list, prompt=TTY::Prompt.new)
    search_product = %w()
    search_input = prompt.select('Select a product', filter: true, require: true) do |item|
        product_list.each_value do |product|
            item.choice(product.description, product.code)
        end
    end
    product_list[search_input].show_product()
end

def edit_product(product_list, prompt=TTY::Prompt.new)
    
    search_product = %w()
    search_input = prompt.select('Select a product', filter: true, require: true) do |item|
        product_list.each_value do |product|
            item.choice(product.description, product.code)
        end
    end

    product_to_update = product_list[search_input]
    product_to_update.show_product()

    puts product_to_update.code
    puts "enter code"
    new_code = gets.chomp
    product_to_update.code = new_code

    puts "enter new description"
    new_desc = gets.chomp
    product_to_update.description = new_desc

    puts "enter new price"
    new_price = gets.chomp
    product_to_update.price = new_price

    puts "enter new quantity"
    new_qty = gets.chomp
    product_to_update.quantity = new_qty


    puts "changes made to the product:"
    product_to_update.show_product
    
    write_product_list(product_list, "product_list.csv")

    # show the selected product key and values
    product_to_update.show_product()
end

puts artii.asciify('TELEMAX')

product_list = load_product_list

until quit
    # select from a menu 
    user_input = prompt.select("What would you like to do?") do |menu|
        menu.choice('full product list')
        menu.choice('edit product')
        menu.choice('create product')
        menu.choice('create a job')
        menu.choice('exit')
    end
    # Respond to user input
    case user_input
    when 'create product' 
        create_product(product_list)

    when 'full product list' 
        full_product_list(product_list)
        
    when 'edit product' 
        # search_product(product_list)   
        edit_product(product_list)    

    when 'create a job'    
        search_product(product_list)
        puts "Provide quantity for the order"
        order_qty = gets.chomp
        # if order_qty = (math to less quantity in database)
        #     puts "do something"
        #       create a txt file 
        #       update csv if possible
        # elsif quantity is below 0
        #     puts "contact supplier to order more stock"
        # else 
        #   puts "access denied"
        # end

    when 'exit'
        puts artii.asciify('GOODBYE')
        quit = true

    else 
        puts "Ummm .. something is wrong"
    end
end