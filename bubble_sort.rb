def bubble_sort(array)
  
  iterations = 0
  while iterations < (array.length - 1) do
    for element in array do
      
      if array[array.index(element) + 1] != nil then
        if (element < array[array.index(element) + 1]) then
          array[array.index(element)] = element
          array[array.index(element)+1] = array[array.index(element)+1]

          

        elsif (element > array[array.index(element) + 1]) then
          orig_index = array.index(element)
          array[array.index(element)] = array[array.index(element) + 1]
          
          array[orig_index + 1] = element

                   
      
        else
          next
        end
      end
      
      iterations += 1
    end
  end
  return array
end

array = [3,2,1,87,6,3]

while array != array.sort() do 
  bubble_sort(array)
end

puts array
