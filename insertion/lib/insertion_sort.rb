class InsertionSort

  def sort(unsorted_array)
    sorted_array = []

    until unsorted_array.empty?
      sorted_array.unshift(unsorted_array.shift)
        sorted_array.each_with_index do |element, index|
          if index == 0
            element
          elsif element >= sorted_array[index - 1]
            element
          elsif element < sorted_array[index - 1]
              sorted_array[index], sorted_array[index - 1] = sorted_array[index - 1], sorted_array[index]
          end
      end
    end
    sorted_array
  end

end
