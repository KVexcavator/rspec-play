class Tokenizer

  def self.tokenize(string)
    string.split(/ +/).reject(&:empty?).map(&:chomp)
  end
end

RSpec.describe Tokenizer do
  let(:text) do
    <<-TEXT.chomp
      I am Sam.
      Sam I am.
      Do you like green eggs and ham?
    TEXT
  end

  it 'tokenizes multiple lines of text' do
    tokenized = Tokenizer.tokenize(text)
    expect(tokenized).to start_with("I", "am", "Sam.", "Sam", "I", "am.")
  end
end
