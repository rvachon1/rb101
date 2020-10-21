def reverse!(array)
  holder_array = []

  while array.length != 0
    holder_array << array.pop
  end

  while holder_array.length != 0
    array << holder_array.shift
  end

  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
list == ["abc"]

list = []
p reverse!(list) == []
list == []