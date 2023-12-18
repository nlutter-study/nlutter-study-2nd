sealed class CardImageType {
  CardImageType._(this.width, this.height);

  final double width;
  final double height;

  factory CardImageType.square() => Square._(150, 150);

  factory CardImageType.landscape() => Square._(320, 220);
}

class Square extends CardImageType {
  Square._(double width, double height) : super._(width, height);
}

class Landscape extends CardImageType {
  Landscape._(double width, double height) : super._(width, height);
}
