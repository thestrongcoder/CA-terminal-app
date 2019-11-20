
# global variable declarations
require 'artii'
require "tty-prompt"
require_relative "./product"
require_relative "./utilities"

artii = Artii::Base.new
prompt = TTY::Prompt.new
product_list = {}
quit = false

puts artii.asciify('T  E  L  E  M  A  X')

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