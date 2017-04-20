def merge_sort(arr)
  if arr.length == 1
    return arr
  else
    new_arr = []
    half = arr.length/2
    arr1 = merge_sort(arr.slice(0..half-1))
    arr2 = merge_sort(arr.slice(half..-1))
    (0...arr.length).each do |i|
      if arr1[0].nil?
        (new_arr << arr2[0]; arr2.shift)
      elsif arr2[0].nil?
        (new_arr << arr1[0]; arr1.shift)
      else
        (arr1[0] <= arr2[0]) ? (new_arr << arr1[0]; arr1.shift) : (new_arr << arr2[0]; arr2.shift)
      end
    end
    new_arr
  end
end

#test
p merge_sort([10, 9, 13, 2, 0, 2, 11, 4]) #[0, 2, 2, 4, 9, 10, 11, 13]
