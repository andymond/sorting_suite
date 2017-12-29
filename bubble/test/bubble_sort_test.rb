require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end
require './bubble/lib/bubble_sort'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BubbleSortTest < Minitest::Test

  def test_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_sort_arranges_array_elements
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
    assert_equal ["a", "b", "c", "d", "e", "f"], sorter.sort(["d", "b", "a", "c", "f", "e"])
  end

end
