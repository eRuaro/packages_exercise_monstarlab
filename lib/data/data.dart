import 'package:packages_exercise_monstarlab/models/website.dart';

final _web1 = Website(
  websiteName: 'Reddit',
  url: 'https://www.reddit.com/',
  imageFile: 'reddit.jpg',
);

final _web2 = Website(
  websiteName: 'Twitter',
  url: 'https://twitter.com/',
  imageFile: 'twitter.jpg',
);

final _web3 = Website(
  websiteName: 'GitHub',
  url: 'http://github.com/',
  imageFile: 'github.jpg',
);

final List<Website> websites = [
  _web1,
  _web2,
  _web3,
];
