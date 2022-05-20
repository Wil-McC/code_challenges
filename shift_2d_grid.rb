# subarrays have same number of elements
# shift grid k times

# a.unshift(elem)
# a.pop -> returns last element

# IN : 2D ARRAY grid, INT k
# OUT: 2D ARRAY shifted k times


def shift_grid(grid, k)
  row_size = 0
  if grid.all? { |arr| arr.length = grid[0].length }
    row_size = arr.length
  else
    return 'Grid rows uneven'
  end


  return grid
end

foo = [[1,2,3], [4,5,6], [7,8,9]]
x = 1

p shift_grid(foo, x)
