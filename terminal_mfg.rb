require "tty-prompt"
prompt = TTY::Prompt.new

class Product
    attr_accessor :code, :description, :price, :quantity 
    def initialize(code, description, price, quantity)
        @code = code
        @description = description
        @price = price
        @quantity = quantity
        
    end
end

#read CSV file (database)

line_num=0
File.open('product_list.csv').each do |line|
    #   print "#{line}"
  product = line.chomp.split(",")
  p Product.new(product[0], product[1], product[2], product[3])
end

# select from a menu
user_input = prompt.select("What would you like to do?") do |menu|
    menu.choice 'search'
    menu.choice 'print full list'
end
