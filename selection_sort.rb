class SelectionSort
  attr_reader :nums
  def initialize(nums = [])
    @nums = nums
  end

  def sort(nums = nums)
    nums.length.times.map do
      nums.delete_at(i_min(nums))
    end
  end

  def swap(nums, i1, i2)
    v1, v2 = nums[i1], nums[i2]
    nums[i2] = v1
    nums[i1] = v2
  end

  def i_min(nums)
    i_min = 0
    nums.each_with_index do |num, i|
      i_min = i if num < nums[i_min]
    end
    i_min
  end
end
