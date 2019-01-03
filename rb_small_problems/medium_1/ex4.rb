def lights_on(num_switches)
  lights = (1..num_switches).map { |x| true }
  (num_switches - 1).times do |x|
    lights.each_with_index do |y, idx|
      lights[idx] = !y if (idx + 1) % (x + 2) == 0
    end
  end
  lights = lights.each_with_index.map { |x, idx| x == true ? idx + 1 : x }
  lights.select { |x| x }
end

p lights_on(5)
p lights_on(10)