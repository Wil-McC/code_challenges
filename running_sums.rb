# IN : nums   ARR
# OUT: summed ARR

def running_sum(nums)
  out_arr = Array.new
  store   = 0
  nums.each do |val|
    store += val
    out_arr << store
  end
  return out_arr
end

nums = [3,1,2,10,1]
p running_sum(nums)
# expect [3,4,6,16,17]
