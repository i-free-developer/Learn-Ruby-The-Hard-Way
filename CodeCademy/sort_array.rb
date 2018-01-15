# sort array, with reverse option
def alphabetize(arr, rev=false)
  arr.sort!
  if rev == true
    return arr.reverse!
  else
    return arr
  end
end

numbers = [2, 5, 3, 16, 0, 322, -5]

puts alphabetize(numbers)
