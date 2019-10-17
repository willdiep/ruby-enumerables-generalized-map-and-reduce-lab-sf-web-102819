def map(arr)
	result = []
	i = 0
	while i < arr.length do
		result.push(yield(arr[i]))
		i = i + 1
	end
	return result
end

# p (map([1, 2, 3, -9]) do |n|
# 	n * -1
# end)

# p (map(["paul", "gurney", "vladimir", "jessica", "chani"]) { |n| n })

# p (map([1, 2, 3, -9]) do |n|
# 	n * n
# end)


def reduce(array, sp=nil)
  if sp
    total = sp
    i = 0
  else
    total = array[0]
    i = 1
  end
  while i < array.length
    total = yield(total, array[i])
    i += 1
  end
  total
end