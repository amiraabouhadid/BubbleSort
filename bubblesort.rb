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

def bubble_sort_block(arr)
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

def bubble_sort_by(arr)
  p bubble_sort_block(arr) { |left, right| left.length <=> right.length }
end
