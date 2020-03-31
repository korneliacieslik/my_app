product_list = [
  ["Wegan bowl", "Wegan bowl for You!", 30.00],
  ["Standard bowl", "Standard bowl for You!", 28.00],
  ["Active bowl", "Active bowl fot active you!", 30.00],
  ["Fit bowl", "Fit bowl for fit you!", 30.00]
]

product_list.each do |name, description, price|  
  Product.create(name: name, description: description, price: price)
end 
product_1 = Product.find_by name: 'Wegan bowl'
product_1.photo.attach(io: File.open('app/assets/images/home_img_1.jpg'), filename: 'home_img_1.jpg', content_type: 'image/jpg')

product_2 = Product.find_by name: 'Standard bowl'
product_2.photo.attach(io: File.open('app/assets/images/home_img_2.jpg'), filename: 'home_img_2.jpg', content_type: 'image/jpg')

product_3 = Product.find_by name: 'Active bowl'
product_3.photo.attach(io: File.open('app/assets/images/home_img_3.jpg'), filename: 'home_img_3.jpg', content_type: 'image/jpg')

product_4 = Product.find_by name: 'Fit bowl'
product_4.photo.attach(io: File.open('app/assets/images/home_img_4.jpg'), filename: 'home_img_4.jpg', content_type: 'image/jpg')