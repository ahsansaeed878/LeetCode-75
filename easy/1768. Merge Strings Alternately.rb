#my solution

def merge_alternately(word1, word2)
    index = 0
    str = ""
    loop do 
        if index < [word1.length, word2.length].max
            str += word1[index].to_s + word2[index].to_s
            index += 1
        else
            break
        end
    end
    str
end

#other solution

def merge_alternately(word1, word2)
    merged_string = ""
    max_length = [word1.length, word2.length].max
    
    max_length.times do |index|
        merged_string += "#{word1[index]}" if index < word1.length
        merged_string += "#{word2[index]}" if index < word2.length
    end
    
    merged_string
end