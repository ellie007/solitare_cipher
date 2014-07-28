class KeyStream

  attr_accessor :phrase
  attr_reader :solitaire_deck

  def initialize
    @solitaire_deck = []
    create_solitaire_deck
  end

  def create_solitaire_deck
    (1..52).each do |card|
      @solitaire_deck << card.to_s
    end
    @solitaire_deck << "A"
    @solitaire_deck << "B"
    @solitaire_deck
  end

  def get_phrase
    @phrase = gets.chomp
  end

  def discard_non_alpha_chars
    self.phrase.upcase.gsub(/[^A-Z]/, '')
  end

  def separate_into_sets_of_five
    @phrase = self.phrase.gsub(/[' ']/, '').scan(/.{1,5}/)
    if @phrase.last.length < 5
      self.phrase.last.insert(-1, "X" * (5 - self.phrase.last.length))
    end
    self.phrase
  end

end
