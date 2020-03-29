product_list = [
  ["Wegan bowl", "Wegan bowl for You!", 30.00],
  ["Standard bowl", "Standard bowl for You!", 28.00],
  ["Active bowl", "Active bowl fot active you!", 30.00],
  ["Fit bowl", "Fit bowl for fit you!", 30.00]
]

product_list.each do |name, description, price|  
  Product.create(name: name, description: description, price: price)
end
