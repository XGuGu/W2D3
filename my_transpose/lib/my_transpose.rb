def my_transpose(arr)
  result = Array.new(arr.length) { Array.new(arr.length) }

  i = 0
  while i < arr.length
    j = 0

    while j < arr.length
      result[j][i] = arr[i][j]

      j+=1
    end

    i+=1
  end

  result
end

# my_transpose([
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ])
