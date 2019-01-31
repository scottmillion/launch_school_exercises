def transpose(mtrx)
  new_mtrx = []
  3.times { |x| new_mtrx << [mtrx[0][x], mtrx[1][x], mtrx[2][x]] }
  new_mtrx
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]