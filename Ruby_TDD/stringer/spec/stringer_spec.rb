require_relative 'spec_helper'

RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it 'concatenates undefined number of strings with a space' do
    expect(Stringer.spacify 'Oscar', 'Vazquez', 'Zweig', "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "has a method minify that shortens string to max length and adds '...' to the end" do
    expect(Stringer.minify "Hello", 10).to eq('Hello')
    expect(Stringer.minify "Hello, your name is a secret", 10).to eq('Hello, you...')
  end

  it 'has a method replacify that takes a sentence and two words; first word needs to be replaced with the second' do
    expect(Stringer.replacify "I can't do this", "can't", "can").to eq("I can do this")
  end

  it 'has a method tokenize that takes a string and returns an array of the individual words' do
    expect(Stringer.tokenize "I love to code").to eq(['I', 'love', 'to', 'code'])
  end

  it 'has a method removify that takes parameter string (original sentence) and string (word to remove);
      removes each instance of the word to remove in the original sentence' do
    expect(Stringer.removify "I'm not a developer", "not").to eq("I'm a developer")
  end
end
