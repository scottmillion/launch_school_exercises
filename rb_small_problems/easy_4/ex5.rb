# outputs a bit different (check)

def multiples_list(num, multiple)
  multi_instances = num / multiple
  counter = 1
  multi_list = []
  multi_instances.times do
    multi_list << multiple * counter
    counter += 1
  end
  multi_list
end

def multisum(num)
  (multiples_list(num, 3) + multiples_list(num, 5)).uniq.sum
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(20)
p multisum(1000)