def diamond(n)
  half_diamond = (1..n).step(2).to_a.map { |num| '*' * num }
  full_diamond = half_diamond + half_diamond[-half_diamond.size..-2].reverse
  full_diamond.each { |asterisks| puts asterisks.center(n) }
end

diamond(9)
diamond(55)


# spaces_left = ' ' * (n / 2 - asterisks.size / 2)
#     puts spaces_left + asterisks
