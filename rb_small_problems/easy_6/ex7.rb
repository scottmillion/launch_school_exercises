def halvsies(array)
  array_new = [[], []]
  index_list = (1..(array.size)).to_a

  index_list.each do |x|
    if (x.to_f - 0.5) <= array.size.to_f / 2
      array_new[0] << array[x - 1] 
    else
      array_new[1] << array[x - 1]
    end
  end

  array_new

end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]