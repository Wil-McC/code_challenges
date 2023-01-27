# IN : nums   ARR
# OUT: summed ARR

def running_sum(nums)
  store   = 0
  nums.map do |val|
    val += store
    store = val
  end
end

nums = [3,1,2,10,-1]
p running_sum(nums)
# expect [3,4,6,16,15]
