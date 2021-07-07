# all UNIQUE triplets of an array that sum to zero (0)
# nums = [-1,0,1,2,-1,-4]
# i + k + j == 0
# i != j != k
# 0 - x = -1? x == -1
# add 2 together, see if there is an elem that cancels out value
# while none equal another and sum != 0 and count < 3
#
# check each in isolation against remaining
# while sum == 0 AND length < 3, add numbers
# add num when it is the negative value of the sum of another 2 nums
#
# us .uniq? and unique method to cut down final product? array of arrays

# counter = 0
# sum = 0
# while sum == 0
#   num = nums[counter]
# end

# get first digit, put it into array
# iterate through each possible combination in a logical fashion
# if a + b = 1, find -(a+b)
# if find x != nil, arr << x
# call uniq on arr of arrs

nums = [-1,0,1,2,-1,-4]

def get_zero_triplets(nums)
  new = nums
  nums.length.times do
    num = new[0]
  end
end

p get_zero_triplets(nums)
