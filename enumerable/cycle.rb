# cycle yields all the elements in the object again and again
# in a loop.

# You can use cycle to decide dynamically how many times you want to iterate
# through a collection—essentially.

class PlayingCard
  SUITS = %w{ clubs diamonds hearts spades }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K }

  class Deck
    def cards
      @cards.dup
    end
    
    def initialize(n = 1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << "#{r} of #{s}"
        end
      end
    end
  end
end

# For example, this command produces a double deck of cards containing two of
# each card for a total of 104:

deck = PlayingCard::Deck.new(2)
puts deck.cards

# cycle(1) is another way to say each!