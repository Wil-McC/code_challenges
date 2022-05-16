# subarrays have same number of elements
# shift grid k times

# a.unshift(elem)
# a.pop -> returns last element

# IN : 2D ARRAY grid, INT k
# OUT: 2D ARRAY shifted k times


def shift_grid(grid, k)

  grid_size = grid.length - 1
  counter = k
  current_index = 0

  while counter > 0 do

    if counter == k
      # take from last and move to first
      grid[current_index].unshift(grid[current_index - 1].pop)
      current_index += 1
      counter -= 1
    elsif current_index == grid_size
      # take from first and move to next


  end
  return grid
end
# if i == grid_size, i = 0
# grid[0..-2].each { |sub_arr| sub_arr.unshift(current_val); current_val = sub_arr.pop }
# while k > 0
# pop off last val
# unshift it onto first arr
# pop off last val in first arr
# unshift it onto next arr
# ......
# when current arr == last arr
# START OVER
