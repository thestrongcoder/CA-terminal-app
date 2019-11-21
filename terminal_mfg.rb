
# global variable declarations
require 'artii'
require "tty-prompt"
require "colorize"
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
        menu.choice('create a job order request')
        menu.choice('exit')
        menu.choice('help')
    end
    # Respond to user input
    case user_input
    when 'create product' 
        create_product(product_list)

    when 'full product list' 
        full_product_list(product_list)
        
    when 'edit product'  
        edit_product(product_list)    

    when 'create a job order request'    
        product_order(product_list)
       

    when 'exit'
        puts artii.asciify('GOODBYE')
        quit = true

    when 'help'
        puts "To search and create a product, select 'create a product'"
        puts "To search and edit a product, select 'edit product'"
        puts "To view the full list of products in the database, select 'full product list'"
        puts "To request a job order, please select 'job request'"
        puts "To exit application, please select 'exit'"
        puts "for additional support, view the software documentation"
    end
end