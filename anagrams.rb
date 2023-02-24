

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
#  p second_anagram?("gizmo", "sally")    #=> false
#  p second_anagram?("elvis", "lives")    #=> true

def first_anagram?(word1, word2)
  word1.downcase.chars.sort == word2.downcase.chars.sort
end
# 0(n^2) or quadratic 

def second_anagram?(word1, word2)
    arr_word1 = word1.split("")
    arr_word2 = word2.split("")

    arr_word1.each do |char|
        if arr_word2.include?(char)
            arr_word2.delete(char)
        end
    end
    word2.empty?
end

# 0(n^2) or quadratic

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def third_anagram?(word1, word2)
    word1split = word1.split('') #n
    word2split = word2.split('') #n
    p word1split
    p word2split
    if word1split.sort == word2split.sort #n^2
        return true
    else 
        return false
    end
end

# O(n^2) quadratic

def fourth_anagram?(word1, word2)
    hash1 = Hash.new{|h,k| h[k] = 0} 
    hash2 = Hash.new{|h,k|h[k] = 0} 
    word1.each_char do |char| #n
        hash1[char] += 1 
    end
    word2.each_char do |char| #n
        hash2[char] += 1
    end
    hash1 == hash2 # constant becaue it is limited to letters in alphabet
end

#O(n) linear

# p third_anagram?("gizmo", "sally")
# p third_anagram?("elvis", "lives")

# def bonus_anagrams?(word1, word2)
#     chars = Hash.new{|h,k| h[k] = 0 }
#     word = word1 + word2
#     word.each_char do |char|
#         chars[char] += 1
#     end
#     chars.values.length == word1.length
# end

p fourth_anagram?("gizmo", "sally")
p fourth_anagram?("elvis", "lives")
# p bonus_anagrams?("koob", "book")