class TravelModel {
  String name;
  String location;
  String image;
  int distance;
  String temp;
  int rating;
  String discription;
  String price;

  TravelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.discription,
    required this.price,
  });
}

List<TravelModel> travelList = [
  TravelModel(
    name: 'Switzerland',
    location: 'Central Europe',
    image: 'assets/Switzer.jpg',
    distance: 1200,
    temp: '25°C',
    rating: 5,
    price: '3000',
    discription: 'Switzerland is a small country in Europe and very beautiful and have many mountainsSwitzerland is a small country in Europe and very beautiful and have many mountains',
  ),
  TravelModel(
    name: 'Iran',
    location: 'Asia',
    image: 'assets/iran.jpg',
    distance: 3000,
    temp: '30°C',
    rating: 4,
    price: '1000',
    discription: 'iran is a Big country in Asiairan is a Big country in Asiairan is a Big country in Asiairan is a Big country in Asiairan is a Big country in Asia iran is a Big country in Asiairan is a Big country in Asiairan is a Big country in Asiairan is a Big country in Asiairan is a Big country in Asia iran is a Big country in Asiairan is a Big country in Asiairan is a Big country in Asiairan is a Big country in Asiairan is a Big country in Asia',
  ),
  TravelModel(
    name: 'Rome',
    location: 'Italy',
    image: 'assets/room.jpg',
    distance: 1500,
    temp: '28°C',
    rating: 3,
    price: '1200',
    discription: 'Rome is a beautiful city in Italy. Rome is a beautiful city in Italy.is a beautiful city in Italy. is a beautiful city in Italy ',
  ),
  TravelModel(
    name: 'Istanbul',
    location: 'turkey',
    image: 'assets/turk.jpeg',
    distance: 3560,
    temp: '28°C',
    rating: 3,
    price: '1200',
    discription: 'turkey is a beautiful city in turkey. turkey is a beautiful city in turkey.is a beautiful city in turkey. is a beautiful city in turkey ',
  ),
];
