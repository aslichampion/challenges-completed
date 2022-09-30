# Valid passowords are
# - 8 or more characters
# - include at least one of these characters: !, @, $, %, &

# Will need two conditionals that must both evaluate to true
# first condiitonal is for minimum string length
# next conditional is that the string must include at least one
# of a specified range of special chars


def valid?(password)
    (password.length >= 8) && (password.match?(/[!@$%&]/))
end
