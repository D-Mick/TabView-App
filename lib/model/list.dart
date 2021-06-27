class ImageList {
  final String image;
  final String title;
  final String description;
  final String author;

  ImageList(
      {required this.image,
      required this.title,
      required this.description,
      required this.author});
}

List<ImageList> content = [
  ImageList(
      image: 'assets/superman.jpg',
      title: ' Nexus The Origin',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              'et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      author: '-Christian Okorie'),
  ImageList(
      image: 'assets/superman.jpg',
      title: 'Green Lantern',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
              ' et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      author: '-Morrison Sharp Oliff'),
  ImageList(
      image: 'assets/superman.jpg',
      title: 'Attack On Titan',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
              ' et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      author: '-Hajime Isayama'),
  ImageList(
      image: 'assets/superman.jpg',
      title: 'Black Clover',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
              ' et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      author: '-Yoki Tabata'),
  ImageList(
      image: 'assets/superman.jpg',
      title: 'Captain America',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
              ' et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      author: '-Mark Waid'),
  ImageList(
      image: 'assets/superman.jpg',
      title: 'Manga Crossover ',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
              ' et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      author: '-Unknown Source'),
  ImageList(
      image: 'assets/superman.jpg',
      title: 'The Winter Soldier',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
              ' et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      author: '-Fan Made Story'),
];

class ImageListTwo {
  final String image;

  ImageListTwo(this.image);
}

List<ImageListTwo> recommendedImages = [
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
];
List<ImageListTwo> recommendedImagesII = [
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
  ImageListTwo('assets/superman.jpg'),
];
