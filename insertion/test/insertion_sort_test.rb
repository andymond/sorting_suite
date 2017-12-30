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
  end

end
