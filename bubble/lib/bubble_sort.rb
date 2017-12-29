class BubbleSort

  def sort(unsorted_array)
    sorted_array = unsorted_array.each do |array|
      unsorted_array.each_with_index do |element, index|
        if unsorted_array[index + 1].nil?
          element
        elsif element > unsorted_array[index + 1]
        unsorted_array[index], unsorted_array[index + 1] = unsorted_array[index + 1], unsorted_array[index]
        end
      end
    end
    sorted_array
  end

end
