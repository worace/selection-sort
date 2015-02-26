gem "minitest"
require "minitest/autorun"
require "minitest/spec"
require_relative "selection_sort"

describe SelectionSort do
  it "sorts elements" do
    nums = [5,1,2,4,6,8]
    assert_equal [1,2,4,5,6,8], SelectionSort.new(nums).sort
  end

  it "leaves a sorted set sorted" do
    assert_equal [1,2,3,4,5,6], SelectionSort.new([1,2,3,4,5,6]).sort
  end

  it "swaps elements at 2 indices" do
    sort = SelectionSort.new
    nums = [1,2,3]
    sort.swap(nums,0,1)
    assert_equal [2,1,3], nums
  end

  it "doesnt mess up when swapping same index" do
    sort = SelectionSort.new
    nums = [1,2,3]
    sort.swap(nums, 0, 0)
    assert_equal [1,2,3], nums
  end

  it "finds index min of an array of nums" do
    assert_equal 2, SelectionSort.new.i_min([8,5,1,5,2])
  end
end
