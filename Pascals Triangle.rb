def pascals_triangle(n)
  result = []
  return result if n < 1

  if n >= 1
    result.push([1])
  end
  if n >= 2
    result.push([1, 1])
  end
  n -= 2

  while n > 0
    next_row = [1]
    last = result.last
    last.each_with_index do |num, i|
      j = i + 1
      next_row.push(num + last[j]) if j < last.length
    end
    next_row.push(1)
    result.push(next_row)
    n -= 1
  end

  result
end

print pascals_triangle(5)