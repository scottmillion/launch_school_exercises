# require 'pry'

def rotate90(mat)
  new_mat = []
  mat[0].size.times do |x|
    new_mat << []
    mat.reverse.each do |sub_list|
      # binding.pry
      new_mat[x] << sub_list[x]
    end
  end
  new_mat
end


matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6],
  ['a', 'b', 'c']
]

p rotate90(matrix1) == [['a', 3, 4, 1], ['b', 9, 7, 5], ['c', 6, 2, 8]]

