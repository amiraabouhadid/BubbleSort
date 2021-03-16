def bubble_sort(arr)
  loop do
    switched = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        switched = true
      end
    end
    break unless switched
  end
  arr
end

data = [1, 89, 4, 43, 9]

p bubble_sort(data)

def bubble_sort_by(arr)
  loop do
    switched = false
    (arr.length - 1).times do |i|
      diff = yield(arr[i], arr[i + 1]).to_i
      if diff.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        switched = true
      end
    end
    break unless switched
  end
  arr
end

data1 = %w[hiya h hey hello hi]

p bubble_sort_by(data1) { |left, right|
  left.length <=> right.length
}
