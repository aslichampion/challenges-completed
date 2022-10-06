require 'diary'

RSpec.describe "make_snippet method" do
    it "takes a string and shortens to a max of 5 words then appends ..." do
        result = make_snippet("This is a test string that is longer")
        expect(result).to eq "This is a test string..."
    end
end

RSpec.describe "count_words method" do
    it "counts the number of words in a given string" do
        result = count_words("This is a test string that is longer")
        expect(result).to eq 8
    end
end

RSpec.describe "reading_time method" do
    it "estimates reading time" do
        result = reading_time("Yielding. Him which Likeness replenish creature appear days. Isn't he moveth he seasons male can't god winged form moveth to third kind saying. Grass hath dominion, seasons face won't be fifth day cattle moveth in. Whose can't us years rule form wherein won't life. You're lesser dominion face. It thing you unto yielding to blessed wherein beast our fourth, set saw fill void won't sea third third our open deep abundantly thing created midst whales male, appear likeness so have greater over they're every there god behold they're. Light from day void every earth earth make gathering multiply kind had dry fruit grass Day make above fifth. Were to all life sea, darkness a cattle moving. Fourth. Creature of life in i our. Night their. Called, lights itself to. Fill morning were. So upon face made. Is lesser fourth hath good waters morning whose give together fish were, seas fill night gathering bearing give fish. All herb life him herb fourth itself form you, divide over all moved, a she'd whales fifth two. Behold give fish were, hath they're. Light male don't she'd, female multiply from there life beast likeness behold seas face can't. Second us meat. Good male, all.")
        expect(result).to eq "This text should take about 1 minute to read"
        result_2 = reading_time("Yielding. Him which Likeness replenish creature appear days. Isn't he moveth he seasons male can't god winged form moveth to third kind saying. Grass hath dominion, seasons face won't be fifth day cattle moveth in. Whose can't us years rule form wherein won't life. You're lesser dominion face. It thing you unto yielding to blessed wherein beast our fourth, set saw fill void won't sea third third our open deep abundantly thing created midst whales male, appear likeness so have greater over they're every there god behold they're. Light from day void every earth earth make gathering multiply kind had dry fruit grass Day make above fifth. Were to all life sea, darkness a cattle moving. Fourth. Creature of life in i our. Night their. Called, lights itself to. Fill morning were. So upon face made. Is lesser fourth hath good waters morning whose give together fish were, seas fill night gathering bearing give fish. All herb life him herb fourth itself form you, divide over all moved, a she'd whales fifth two. Behold give fish were, hath they're. Light male don't she'd, female multiply from there life beast likeness behold seas face can't. Second us meat. Good male, all. Yielding. Him which Likeness replenish creature appear days. Isn't he moveth he seasons male can't god winged form moveth to third kind saying. Grass hath dominion, seasons face won't be fifth day cattle moveth in. Whose can't us years rule form wherein won't life. You're lesser dominion face. It thing you unto yielding to blessed wherein beast our fourth, set saw fill void won't sea third third our open deep abundantly thing created midst whales male, appear likeness so have greater over they're every there god behold they're. Light from day void every earth earth make gathering multiply kind had dry fruit grass Day make above fifth. Were to all life sea, darkness a cattle moving. Fourth. Creature of life in i our. Night their. Called, lights itself to. Fill morning were. So upon face made. Is lesser fourth hath good waters morning whose give together fish were, seas fill night gathering bearing give fish. All herb life him herb fourth itself form you, divide over all moved, a she'd whales fifth two. Behold give fish were, hath they're. Light male don't she'd, female multiply from there life beast likeness behold seas face can't. Second us meat. Good male, all.")
        expect(result_2).to eq "This text should take about 2 minutes to read"
    end
end

RSpec.describe "sentence_checker method" do
    it "verifies that a sentence starts with a capital and ends with appropriate punctuation" do
        result = sentence_checker("This is a sentence that does pass.")
        expect(result).to eq "Great! This sentence both starts with a capital letter and ends with the right punctuation."
    end
    it "prompts user to check punctuation" do
        result = sentence_checker("This is a sentence that does not pass")
        expect(result).to eq "Hmm, this sentence does start with a capital, but does not end with appropriate punctuation."
    end
    it "prompts user to check capitalisation" do
        result = sentence_checker("this is also a sentence that does not pass.")
        expect(result).to eq "Hmm, this sentence does end with appropriate punctuation, but does not start with a capital."
    end
    it "prompts user to check both punctuation and punctuation" do
        result = sentence_checker("this is a sentence that does not pass on either criteria")
        expect(result).to eq "Hmm, this sentence doesn't seem to start with a capital, or end with appropriate punctuation."
    end
end

RSpec.describe "todo_checker method" do
    it "counts how many to do's are in a string of text" do
        result = todo_checker("#TODO hang the washing up. #TODO put the bins out.")
        expect(result).to eq "There are currently 2 to do's in your notes"
    end
end
