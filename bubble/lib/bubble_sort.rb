class BubbleSort

  def sort(unsorted_array)
    sorted_array = unsorted_array.each do
      sorting_criteria(unsorted_array)
    end
    sorted_array
  end

  def sorting_criteria(unsorted_array)
    unsorted_array.each_with_index do |element, index|
      if unsorted_array[index + 1].nil?
        element
      elsif element > unsorted_array[index + 1]
      unsorted_array[index], unsorted_array[index + 1] = unsorted_array[index + 1], unsorted_array[index]
      end
    end
  end

end
