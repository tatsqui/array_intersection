# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: n*m
# Space complexity: Can be On (sorting in place possible)
def intersection(array1, array2)
  unless array1 && array2
    return []
  end

  if array1.length < array2.length
    smaller = array1.sort
   larger = array2.sort
  else
    smaller = array2.sort
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
