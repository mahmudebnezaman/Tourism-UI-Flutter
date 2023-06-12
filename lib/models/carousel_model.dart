class CarouselModel {
  String image;
  CarouselModel(this.image);
}

List<CarouselModel> carousels = carouselsData
    .map((item) => CarouselModel(item['image'].toString()))
    .toList();

var carouselsData = [
  {"image": "images/ok.jpg"},
  {"image": "images/ok1.jpg"},
  {"image": "images/ok2.jpg"},
];
