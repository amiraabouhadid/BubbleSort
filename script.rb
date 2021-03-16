def bubble_sort_by(arr)

  switched = false

  unless switched

    (arr.length-1).times do |i|
      if arr[i].length - arr[i+1].length > 0
        arr[i], arr[i+1] = arr[i+1], arr[i]
        switched = true
      end
    end
  end
  arr
end

data=["coke","me","these", 'pepperoni']

p bubble_sort_by(data)
