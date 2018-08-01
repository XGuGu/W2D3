# def stock_picker(array)
#   greatest_diff = 0
#   greatest_pair = []
#
#   i = array.length - 1
#   while i > 0
#
#     j = i - 1
#     while j >= 0
#       current_diff = array[i] - array[j]
#
#       if current_diff > greatest_diff
#         greatest = current_diff
#         greatest_pair = [i, j]
#       end
#
#     j -= 1
#     end
#
#   i -= 1
#   end
#
#   greatest_pair #>> pair of number
# end


def stock_picker(array)
  greatest = 0
  greatest_pair = []

(0...array.length).each do |i|
  (i+1...array.length).each do |j|

    current = array[i] - array[j]

      if current < greatest
        greatest = current
        greatest_pair = [i, j]
      end
    end
  end

  greatest_pair
end
