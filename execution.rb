

listex = [ 0, 3, 5, 4, -5, 10, 1, 90 ]


def my_min_worst(list)
    min = list[0]
     (0...list.length).each do | i |
        (i+1...list.length).each do |j|
           if list[i] > list[j]
                 mina = list[j]
             end
            min = list[j] if list[j] < min
        end
          
     end
    min
end

# O(n^2) or quadratic

def my_min(list) 
    min = list.first
    list.each do | ele |
        min = ele if ele < min 
    end
    min
end

# O(n) linear

# p my_min_worst(listex)
# p my_min(listex)
listex = [5,3,-7]

def largest_contiguous_subsum_bad(list)
  sub_arrays = []
  (0...list.length).each do |i|
    (i...list.length).each do |j|
      sub_arrays << list[i..j]
    end 
  end
  max = 0
  sub_arrays.each do |sub|
    max = sub.sum if sub.sum > max
  end
  max
end


# O(n^2) or quadratic



p largest_contiguous_subsum_bad(listex)