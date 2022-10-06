def make_snippet(string)
    array = string.split(" ")
    return "#{array[0..4].join(" ")}..."
end

def count_words(string)
    array = string.split(" ")
    return array.count
end

# reading text time based on being able to read 200 words a minute
# will need to take a string as input
# will need to split that string into words and count them
# will need to divide the amount of words by 200 to get reading time in minutes
# will need to round to the nearest minute
# will then need to present time estimate in a nice human readable format
# Ideally output will look something like: "This text should take about 35 minutes to read"

def reading_time(string)
    words = string.split(" ")
    minutes = words.count / 200
    if minutes > 1
        return "This text should take about #{minutes} minutes to read"
    else
        return "This text should take about #{minutes} minute to read"
    end
end

# sentence starts with uppercase and ends with sentence ending punctuation
# will take a string as an argument
# will select the first character and compare it to itself upcased which should match
# will select the last character and compare it to a range of given punctuation marks
# returns to teh user a plain english verification " Yes, this sentence begins with an uppercase character and ends with appropriate punctuation"
# if ony one of the requirments is satisfied it will return to the user a message indicating
# what they have missed: "This sentence begins with a capital letter, but does not finish with appropriate punctuation" and vice versa

def sentence_checker(string)
    if string[0] == string[0].upcase && string[-1].match?(/[.?!]/)
        return "Great! This sentence both starts with a capital letter and ends with the right punctuation."
    elsif string[0] == string[0].upcase
        return "Hmm, this sentence does start with a capital, but does not end with appropriate punctuation."
    elsif string[-1].match?(/[.?!]/)
        return "Hmm, this sentence does end with appropriate punctuation, but does not start with a capital."
    else
        return "Hmm, this sentence doesn't seem to start with a capital, or end with appropriate punctuation."
    end
end

# Take a string, text entered in the users notes
# scan that text for instances of #TODO 
# return how many instances of #TODO
# present that to the reader in a nice format like "There are currently 4 to do's in your notes"

def todo_checker(string)

    words = string.split(" ")
    return "There are currently #{words.count("#TODO")} to do's in your notes"

end