# 21 is a game consisting of a daeler and a player, where the participants try to get as close as possible to 21 without going over.

# Overview of the game
# - Both participants are initially dealt 2 cards from a 52 card deck
# - The player take the first turn, and can "hit" or "stay".
# - If the player busts, he loses. If he stays, its the dealer's turn.
# - The dealer must hit until his cards add up to at least 17.
# - If he busts, the player wins. If both player and dealer stays, then the highest total wins.

# Nouns: card, player, dealer, participants, deck, game, total
# Verbs: deal, hit, stay, busts

require 'pry'

class Player
  attr_accessor :player_cards

  def initialize
    player_cards = []
  end

  def hit
  end

  def stay
  end

  def busted?
  end

  def total
  end
end

class Dealer
  def initialize

  end

  def hit
  end

  def stay
  end

  def busted?
  end

  def total
  end
end

class Participants
  def initialize
  end

  def deal
  end
end

class Card
  SUITS = %w(S H D C)
  VALUES = %W(2 3 4 5 6 7 8 9 10 J Q K A)

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def to_s
    "The #{value} of #{suit}"
  end

  def suit
    case @suit
    when 'S' then 'Spades'
    when 'H' then 'Hearts'
    when 'D' then 'Diamonds'
    when 'C' then 'Clubs'
    end
  end

  def value
    case @value
    when 'A' then 'Ace'
    when 'K' then 'King'
    when 'Q' then 'Queen'
    when 'J' then 'Jack'
    else
      @value
    end
  end
end

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    Card::SUITS.each do |suit|
      Card::VALUES.each do |value|
        @cards << Card.new(suit, value)
      end
    end

    scramble_deck!
  end

  def scramble_deck!
    cards.shuffle!
  end
end

class Game
  def start
    deal_cards
    show_initial_cards
    # player_turn
    # dealer_turn
    # show_results
  end

  def deal_cards
    puts "Welcome to our game of Twenty One!"
    Cards.new
    binding.pry
    human = Player.new
    2.times do
      human.player_cards << deck.pop
    end
  end

  def show_initial_cards
    puts "You have: #{player_cards[0]} and #{player_cards[1]}"
  end
end



puts Deck.new.cards