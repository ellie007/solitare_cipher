require 'key_stream'

describe KeyStream do

  let(:key_stream) { KeyStream.new }

  it 'creates a deck of cards' do
    expect(key_stream.solitaire_deck.count).to eq(54)
  end

  it 'upcases and discards any non alpha characters' do
    key_stream.phrase = "Hey, Hey!  I program in Ruby!"

    expect(key_stream.discard_non_alpha_chars).to eq("HEYHEYIPROGRAMINRUBY")
  end

  it 'separates the phrase into groups of five character lengths' do
    key_stream.phrase = "Have a good day!"

    expect(key_stream.separate_into_sets_of_five).to eq(["Havea", "goodd", "ay!XX"])
  end

end
