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

data = [1, 89, 4, 43, 9]

p bubble_sort(data)

def bubble_sort_by(arr)
  switched = false
  unless switched
    (arr.length - 1).times do |i|
      if (arr[i].length - arr[i + 1].length).positive ?
        (arr[i], arr[i + 1] = arr[i + 1], arr[i];
        switched = true):
        switched= false
      end
    end
  end
  arr
end

data1 = %w(coke, me, these, pepperoni)

p bubble_sort_by(data1)
