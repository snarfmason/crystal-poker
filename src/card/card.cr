class Card
  property :rank, :suit

  def initialize(rank : Int32, suit : Char)
    @rank = rank
    @suit = suit
  end

  def self.parse(str)
    split_str = str.chars

    # rank = RANK.key(split_str[0])
    rank = RANK.select { |k,v| v == split_str[0] }.map { |k,v| k }.first
    suit = split_str[1]

    new(rank, suit)
  end

  def to_s
    "#{RANK[rank]}#{suit}"
  end
end
