

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
      sub_arrays << list[i..j]   #O(n^3)
    end 
  end
  max = 0
  sub_arrays.each do |sub| # O(n * m)
    max = sub.sum if sub.sum > max
  end
  max
end


# O(n^3) or polynomial



p largest_contiguous_subsum(listex)

def largest_contiguous_subsum(list)
    largest_sum = list.first
    current_sum = 0

    list.each do | ele |
        current_sum += ele
        if current_sum > largest_sum 
            largest_sum = current_sum
        elsif current_sum < 0
            current_sum = 0
        end
    end
    largest_sum
end

# O(n)