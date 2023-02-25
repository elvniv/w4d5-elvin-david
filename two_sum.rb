





def bad_two_sum?(arr, target_sum)

    arr.each_with_index do | ele , i | #n
        arr.each_with_index do | ele2, j |  #n
            if i < j && (ele + ele2 == target_sum)
                return true
            end
        end
    end
    false
end 

# O(n^2)
# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def sort_two_sum?(arr, target_sum)
    arr.sort!
    i = 0 
    j = arr.length - 1

    arr.each_with_index do | ele, i |  #n
        while i < j                    # not sure
           return true if ele + arr[i + 1] == target_sum
           break if ele + arr[ i + 1 ] > target_sum
           i += 1
        end
    end
    false
end

# p sort_two_sum?(arr, 6) # => should be true
# p sort_two_sum?(arr, 10) # => should be false

def hash_two_sum?(arr, target_sum)
    hash = Hash.new(0)

    # arr.each_with_index do | num, i |
    #    temp = target_sum - num
    #    p hash.keys
    #     if hash.key?(temp)
    #         return true
    #     end
    #     hash[num] = i 
    # end

    # false
    
    arr.each do | ele | #n
        hash[ele] += 1
    end
 
    hash.keys.each do | key | #n
        if 2 * key != target_sum
            temp =  target_sum - key 
        end
       return true if hash.keys.include?(temp) #n
       
    end
    
    false
end
# O(n)
arr = [0, 1, 5, 7, 11]
p hash_two_sum?(arr, 6) # => should be true
p hash_two_sum?(arr, 10) # => should be false
p hash_two_sum?(arr, 16) # => should be true