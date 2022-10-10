require 'debugging'

RSpec.describe "says hello to the named user" do
    it "returns hello with a string input as the name" do
        result = say_hello("kay")
        expect(result).to eq "hello kay"
    end
end

RSpec.describe "text cipher method" do
    it "encodes a given string with a given key and returns the encrypted string" do
        result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
        expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
    end
    it "decodes ciphered text from previous step" do
        result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
        expect(result).to eq "theswiftfoxjumpedoverthelazydog"
    end
end

RSpec.describe "most common lettter method" do
    it "counts letter incidence and returns most frequent" do
        result = get_most_common_letter("the roof, the roof, the roof is on fire!")
        expect(result).to eq "o"
    end
end