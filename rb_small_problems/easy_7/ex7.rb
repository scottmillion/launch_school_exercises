def show_multiplicative_average(array_of_integers)
  array_product = array_of_integers.inject(1) { |product, val| product *= val }
  puts '%.3f' % (array_product.to_f / array_of_integers.size)
end

# other ways

=begin

def show_multiplicative_average(array)
  result = (array.inject(:*).to_f / array.count)
  '%.3f' % result
end
  
=end



show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667