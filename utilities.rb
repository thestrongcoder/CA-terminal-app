def full_product_list(product_list)
    product_list.each_value do |product|
    product.show_product
    end
    puts ""
end
