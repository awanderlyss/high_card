# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
collect = []

# Build a deck of shuffled cards.
#
# The deck should be an array of cards.
# Each card should be a mini-array with a value and suit. Example: [8, "hearts"]
# Shuffle the deck. It would look something like this...
# deck = [
#     [8, "hearts"],
#     [2, "diamonds"],
#     ["J", "clubs"],
#     ...
# ]

ranks.each_with_index do |rank, val|
  suits.each do |suit|
    collect.push(rank, suit, val)
    deck.push(collect)
    collect = []
  end
end

deck.shuffle

# NOTE: do not hardcode the deck. Create it by performing methods on the two arrays in the starter code.
# Collect an array of player names by prompting:

# "{n} players so far. Enter a player name, or type 'play':" Should look like this: [{name:'Jesse'}, {name:'Jane'}]
loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  name = gets.chomp
  break if name == 'play'
  players << [{name: name}]
end

puts players
# Upon "play", deal each player a card.
# Find the highest card score dealt (Aces high).
# Find the winning player name, then print out:
# "Winner(s): {name1, name2, …}!"
