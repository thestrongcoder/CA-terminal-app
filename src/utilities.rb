def full_product_list(product_list)
    product_list.each_value do |product|
    product.show_product
    end
    puts ""
end

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
end

def write_product_list(product_list, file)
    # create a string for each product hash and append it to file
    product_list.each_value do |product|
        write_product_to_file(product, file)
    end
end

def clear_product_list()
    #truncate csv data prior to writing data to file using the edit product feature
    File.truncate('product_list.csv', 0)
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
    product_list.store(new_product.code, new_product)
    
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
    clear_product_list()
    write_product_list(product_list, "product_list.csv")

    # show the selected product key and values
    product_to_update.show_product()
end

def product_order(product_list, prompt=TTY::Prompt.new)
    search_product = %w()
    search_input = prompt.select('Select a product', filter: true, require: true) do |item|
        product_list.each_value do |product|
            item.choice(product.description, product.code)
        end
    end
    
        puts "Provide quantity for the order"
        order_qty = gets.chomp
        product_to_order = product_list[search_input]
        if order_qty >= "1"
        puts "printing new job request to production" 
        puts ""
        else
        puts "Something went wrong, please try again" 
        puts ""
        end
end

