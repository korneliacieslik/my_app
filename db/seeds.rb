product_list = [
  ["Wegan bowl", "Wegan bowl for You!"],
  ["Standard bowl", "Standard bowl for You!"],
  ["Active bowl", "Active bowl fot active you!"],
  ["Fit bowl", "Fit bowl for fit you!"]
]

product_list.each do |name, description|  
  Product.create(name: name, description: description)
end
