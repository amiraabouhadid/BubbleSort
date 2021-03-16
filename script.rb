def bubble_sort(arr)
  switched = false

  unless switched
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        switched = true
      end
    end
  end
  arr
end

data1 = [1, 89, 4, 43, 9]

p bubble_sort(data1)
