

def first_anagram?(word_1, word_2)
    word_1.downcase.chars.sort == word_2.downcase.chars.sort
end

# time  complexity

# ruby uses quicksort for sorting so this is quadratic
# ruby chars method is n time complexity
# ruby downcase method is n time complexity 

# n + n + n^2
# ignore the first two n's since n^2 is the dominant element leaving:
# O(n^2)


# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true


def second_anagram?(word_1, word_2)
    arr_1 = word_1.split("") # O(n)
    arr_2 = word_2.split("")
    arr_1.each do | char | #n
        return false unless arr_2.include?(char) #n
        arr_2.delete_at(arr_2.index(char)) #n   
    end
    arr_2.empty? #n
end

# overall quadrtic 
 p second_anagram?("gizmo", "sally")    #=> false
 p second_anagram?("elvis", "lives")    #=> true

