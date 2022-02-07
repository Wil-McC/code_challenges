# @param {Integer[][]} accounts
# @return {Integer}
# Input: accounts = [[2,8,7],[7,1,3],[1,9,5]]
# Output: 17 - sum of array[]

def maximum_wealth(accounts)
  wealth_arr = accounts.flat_map do |sub_arr|
    sub_arr.sum
  end
  return wealth_arr.max
end

accounts = [[2,8,7],[7,1,3],[1,9,5]]

p maximum_wealth(accounts)
