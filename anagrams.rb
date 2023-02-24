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

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true