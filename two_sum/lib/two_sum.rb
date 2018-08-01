def two_sum(arr)
  result = []
  (0...arr.length).each do |i|
    (i + 1...arr.length).each do |j|
      result << [i, j] if arr[i] + arr[j] == 0
    end
  end


  result
end
