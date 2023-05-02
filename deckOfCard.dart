void main() {
  var deck = Deck();
  print(deck);
  print(deck.deal(5));
  print(deck);
  // deck.shuffle();
  //print(deck.cardsWithSuit('Clubs'));
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
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
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }
}

class Card {
  String rank;
  String suit;
  Card(this.rank, this.suit);
  @override
  toString() {
    return '$rank of $suit';
  }
}
