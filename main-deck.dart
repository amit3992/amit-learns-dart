class Deck {
  List<Card> cards;
  
  Deck() {
    cards = new List<Card>();
    
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
    
    for (var suit in suits) {
      for(var rank in ranks) {
        Card newCard = new Card(suit, rank);
        cards.add(newCard);
      }
    }
  }
  
  void showCards() {
    for(var card in cards) {
      print(card.toString());
    }
  }
}

class Card {
  
  String suit;
  String rank;
  
  Card(this.suit, this.rank) {
    
  }
  
  String toString() {
    return this.rank + ' of ' + this.suit;
  }
  
}

void main() {
	var deck = new Deck();
  deck.showCards();
}
