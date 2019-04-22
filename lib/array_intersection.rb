# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: n*m or quadratic time complexity that is dependent on length of smaller array
# Space complexity: Up to On after sorting (in place is possible) where n is length of smaller array
def intersection(array1, array2)
  unless array1 && array2
    return []
  end

  if array1.length < array2.length
    smaller = array1
   larger = array2.sort
  else
    smaller = array2
   larger = array1.sort
  end

  i = 0
  result = []
  smaller.each do |num|
    larger.each do |other|
      if num == other
        result << num
      end
    end
  end
  return result
end
