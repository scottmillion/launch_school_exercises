def buy_fruit(array)
  array_new = []
  array.each do |fruit_and_quantity|
    fruit_and_quantity[1].times { |x| array_new << fruit_and_quantity[0] }
  end
  array_new
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin

Also could do

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end 
 
=end