

require 'random-word'

# Returns one random word
def getWord
    return RandomWord.adjs.next
end

$word = getWord


# Prompts user for an input and calls the checkLetter function
def getInput
    puts "Guess a letter:"
    checkLetter(gets.chomp)
end

# Receives a letter and checks if in random word
def checkLetter(letter)
    $word.each do |let|
        if let == let
            puts "Hurray"
        end
    end
end

# Display underscores at first and then changes when letter has been guessed
def displayLetter(str)
    underscore = "_"
    puts "_" * str.length
end

# puts getWord
#displayLetter(getWord)

getInput