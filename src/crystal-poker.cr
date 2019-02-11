require "./rank"
require "./card"
require "./hand_rank"
require "./hand"

module Crystal::Poker
  VERSION = "0.1.0"

  while (line = gets)
    hands = line.split('|').map { |h| Hand.parse(h) }
    max = hands.max
    puts "#{line.strip}, Winner: #{hands.select { |h| h == max }.map(&.to_s).join(", ")}, Rank: #{max.rank_string}"
  end
end
