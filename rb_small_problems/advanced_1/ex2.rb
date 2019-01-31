def star(n)
  half_star = n / 2
  half_star_list = []
  half_star.times do |count|
    space = ' ' * count
    half_star_list << '*' + space + '*' + space + '*'
  end

  half_star_list.reverse.each_with_index do |stars, idx|
    print ' ' * idx 
    puts stars
  end
  
  puts '*' * n
  
  half_star_list.each_with_index do |stars, idx|
    print ' ' * (half_star - idx - 1) 
    puts stars
  end
end

star(7)
star(9)
star(21)