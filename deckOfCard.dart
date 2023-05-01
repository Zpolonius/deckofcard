void main() {
  var deck = Deck();
  print(deck);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'two', 'three', 'four', 'five'];
    var suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = Card(rank, suit);
        cards.add(card);
      }
    }
  }
  @override
  toString() {
    return 'This is a deck';
  }
}

class Card {
  String rank;
  String suit;
  Card(this.rank, this.suit);
}
