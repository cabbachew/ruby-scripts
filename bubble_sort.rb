def bubble_sort(list)
  unsorted_until_index = list.length - 1
  sorted = false

  until sorted do
    sorted = true
    for i in 0...unsorted_until_index
      if list[i] > list [i + 1]
        sorted = false
        list[i], list[i + 1] = list[i + 1], list[i]
      end
    end
    unsorted_until_index -= 1
  end
  print list
end

bubble_sort([4, 3, 78, 2, 0, 2])
puts ''
bubble_sort([65, 55, 45, 35, 25, 15, 10])
puts ''
