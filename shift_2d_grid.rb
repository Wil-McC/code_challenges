# subarrays have same number of elements
# shift grid k times

# IN : 2D ARRAY grid, INT k
# OUT: 2D ARRAY shifted k times

def shift_grid(grid, k)
  grid_size = grid.length
  row_size = 0
  if grid.all? { |arr| arr.length == grid[0].length }
    row_size = grid[0].length
  else
    return 'Grid rows uneven'
  end

  flat_grid = grid.flatten

  k.times do
    flat_grid.rotate!(-1)
  end

  new_grid = Array.new

  grid_size.times do
    new_grid << flat_grid.pop(row_size)
  end

  return new_grid.reverse
end

foo = [[3,8,1,9],[19,7,2,5],[4,6,11,10],[12,0,21,13]]
x = 4

p shift_grid(foo, x)
