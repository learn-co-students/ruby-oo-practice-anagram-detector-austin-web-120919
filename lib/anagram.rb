require 'pry'
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def split_given_word
        self.word.split("")
    end

    def split_array(array)    
        array.map{|el| el.split("")}
    end

    def match(array)
        result = []
        new_array = split_array(array)
        new_array.each do |el| 
            if el.sort == split_given_word.sort
                result << el.join("")
            end
            result
        end
        result
    end

end