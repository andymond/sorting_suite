require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end
require './insertion/lib/insertion_sort'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class InsertionSortTest < Minitest::Test

  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_it_sorts
    sorter = InsertionSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
    assert_equal ["a", "b", "c", "d", "e", "f"], sorter.sort(["d", "b", "a", "c", "f", "e"])
    assert_equal ["a", "d", "n", "y"], sorter.sort(["y", "d", "n", "a"])
    assert_equal [1, 2, 3, 4, 5], sorter.sort([2, 4, 3, 1, 5])
  end

end
