listex = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min_worst(list)
    min = list[0]
    (0...list.length).each do |i|
        (i+1...list.length).each do |j|
            min = list[j] if list[j] < min
        end
    end
    min
end

# o(n^2) time complexity

def my_min(list)
  min = list.first
  list.each do |el|
    min = el if el < min
  end
  min
end

# o(n) time complexity

p  my_min(listex)  # =>  -5
p  my_min_worst(listex)  # =>  -5

