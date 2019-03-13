

require 'random-word'



# Returns one random word
def getWord
    return RandomWord.adjs.next
end

@word = getWord()
puts @word
@guess = "_" * @word.length


# Prompts user for an input and calls the checkLetter function
def getInput
    puts "Guess a letter:"
    checkLetter(gets.chomp)
end

# Receives a letter and checks if in random word
def checkLetter(letter)
    @word.split("").each_with_index do |item, index|
        if item == letter
            @guess[index] = letter
        end
    end
    puts @guess
end

# Display underscores at first and then changes when letter has been guessed
def displayLetter(str)
    underscore = "_"
    puts "_" * str.length
end


# Run until all letters are guessed
while @guess.include?("_") do
    getInput
end
