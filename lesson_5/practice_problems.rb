arr = ['10', '11', '9', '7', '8']
new_arr = arr.sort do |a, b|
  b.to_i <=> a.to_i
end
p new_arr


books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted = books.sort_by do |book|
  book[:published]
end

p sorted

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

p arr1[2][1][-1]
p arr2[1][:third][0]
p arr3[2][:third][0][0]
p hsh1['b'][1]
p hsh2[:third].keys[0] # or .key(0)


arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

arr1[1][1] = 4
p arr1
arr2[2] = 4
p arr2
hsh1[:first][2][0] = 4
p hsh1
hsh2[['a']][:a][2] = 4
p hsh2

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_ages = 0
munsters.each_value do |description|
  total_male_ages += description["age"] if description["gender"] == "male"
end
p total_male_ages

munsters.each do |name, description|
  puts "#{name} is a #{description["age"]}-year-old #{description["gender"]}."
end

#Look at the below and figure out what is 'a' and what is 'b'
a = 2
b = [5, 8]
arr = [a, b] # [2, [5, 8]]

arr[0] += 2 # [2 + 2, [5, 8]]
arr[1][0] -= a # [4, [5 - 2, 8]]

# my guess: [4, [1, 8]] so a = 2 and b = [3, 8]
p a
p b

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |word_list|
  word_list.each do |word|
    word.chars.each do |char|
      puts char if char =~ /['aeiou']/
    end
  end
end


arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
test = arr.map do |sub_array|
  sub_array.sort do |a, b|
    b <=> a
  end
end
p test


test2 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  hash.map do |key, value| 
    [key, value += 1] 
  end.to_h
end

p test2

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

list = arr.map do |sub_array|
  sub_array.select { |x| x % 3 == 0 }
end
p list

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hash = {}
arr.each do |sub_array|
  hash[sub_array[0]] = sub_array[1]
end
p hash

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

sorted = arr.sort_by do |array|
  array.select { |x| x.odd? }
end
p sorted

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

list = []
hsh.each do |key, value| 
  list << value[:colors] if value[:type] == 'fruit'
  list << value[:size] if value[:type] == 'vegetable'
end
answer = list.map do |element|
  if element.is_a? Array
    element.map { |color| color.capitalize! }
  else
    element.upcase!
  end
end

p answer

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
new_one = arr.reject { |hash| hash.flatten(7).any? { |num| num.odd? if num.to_s.to_i > 0 } }
p new_one

def generate_uuid
  hex_chars = (0..9).to_a + ('a'..'f').to_a
  password = ''
  32.times { password << hex_chars.sample.to_s }
  password[0, 8] + '-' + password[8, 4] + '-' + password[12, 4] + '-' + password [16, 4] + '-' + password[20, 12]
end

p generate_uuid

