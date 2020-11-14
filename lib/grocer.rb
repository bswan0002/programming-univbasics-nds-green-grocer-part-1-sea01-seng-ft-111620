def find_item_by_name_in_collection(name, collection)
  collection.find { |itemHash| itemHash[:item] == name }
end

def consolidate_cart(cart)

  newCart = []
  cart.each do |itemHash|
    currentItem = find_item_by_name_in_collection(itemHash[:item], newCart)
    if currentItem
      currentItem[:count] += 1
    else
      newCart << itemHash
      newCart.last[:count] = 1
    end
  end
end
