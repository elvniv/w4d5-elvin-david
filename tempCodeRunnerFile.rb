arr.each do | ele |
        hash[ele] += 1
    end
     p hash.keys
    hash.keys.each do | key |
       temp =  target_sum - key
       p temp
       return true if hash.keys.include?(temp)
    end
    
    false