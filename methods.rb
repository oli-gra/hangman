

require 'random-word'



def getWord
    return RandomWord.adjs.next
end

def getInput
    puts "Guess a letter:"
    checkLetter(gets.chomp)
end

def checkLetter(letter)
    puts letter
end

def displayLetter(str)
    #puts str.length
    underscore = "_"
    puts "_" * str.length
end

# puts getWord
displayLetter(getWord)