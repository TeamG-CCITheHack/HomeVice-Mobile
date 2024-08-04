import 'package:homevice/app/data/model/allservice_model.dart';
import 'package:homevice/app/data/model/service_model.dart';
import 'package:homevice/app/modules/home/views/home_view.dart';

List<AllServicesModel> allServicesDataList() {
  List<AllServicesModel> list = [];
  list.add(AllServicesModel(
    title: 'AC',
    image: "assets/images/service-ac.jpg",
    navigation: const HomeView(),
  ));
  list.add(AllServicesModel(
    title: 'Kulkas',
    image: "assets/images/service-ac.jpg",
    navigation: const HomeView(),
  ));
  list.add(AllServicesModel(
    title: 'Mesin Cuci',
    image: "assets/images/service-ac.jpg",
    navigation: const HomeView(),
  ));
  list.add(AllServicesModel(
    title: 'Televisi',
    image: "assets/images/service-ac.jpg",
    navigation: const HomeView(),
  ));
  list.add(AllServicesModel(
    title: 'Kompor',
    image: "assets/images/service-ac.jpg",
    navigation: const HomeView(),
  ));
  list.add(AllServicesModel(
    title: 'Pompa Air',
    image: "assets/images/service-ac.jpg",
    navigation: const HomeView(),
  ));
  return list;
}

List<ServiceModel> serviceDataList() {
  List<ServiceModel> list = [];
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Ari Supratman",
    specialty: "Spesialis AC",
    location: "Kab. Bandung",
    rating: 4.5,
    soldServices: 10,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Budi Santoso",
    specialty: "Spesialis AC",
    location: "Jakarta",
    rating: 4.7,
    soldServices: 15,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Rizal Hidayat",
    specialty: "Spesialis AC",
    location: "Kota Bandung",
    rating: 4.9,
    soldServices: 20,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Dian Pratama",
    specialty: "Spesialis AC",
    location: "Surabaya",
    rating: 4.8,
    soldServices: 25,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Eko Wahyu",
    specialty: "Spesialis AC",
    location: "Yogyakarta",
    rating: 4.6,
    soldServices: 12,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Fajar Nugroho",
    specialty: "Spesialis AC",
    location: "Semarang",
    rating: 4.7,
    soldServices: 18,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Gilang Prasetyo",
    specialty: "Spesialis AC",
    location: "Malang",
    rating: 4.9,
    soldServices: 22,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Hendro Kurniawan",
    specialty: "Spesialis AC",
    location: "Denpasar",
    rating: 4.8,
    soldServices: 30,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Iwan Setiawan",
    specialty: "Spesialis AC",
    location: "Bali",
    rating: 4.6,
    soldServices: 14,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Joko Santoso",
    specialty: "Spesialis AC",
    location: "Medan",
    rating: 4.5,
    soldServices: 11,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Kiki Ahmad",
    specialty: "Spesialis AC",
    location: "Balikpapan",
    rating: 4.8,
    soldServices: 27,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Lukman Hakim",
    specialty: "Spesialis AC",
    location: "Makassar",
    rating: 4.7,
    soldServices: 19,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Maman Suparman",
    specialty: "Spesialis AC",
    location: "Palembang",
    rating: 4.9,
    soldServices: 23,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Naufal Rizky",
    specialty: "Spesialis AC",
    location: "Bandung",
    rating: 4.6,
    soldServices: 16,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Oki Dwi",
    specialty: "Spesialis AC",
    location: "Solo",
    rating: 4.7,
    soldServices: 21,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Putra Adi",
    specialty: "Spesialis AC",
    location: "Pontianak",
    rating: 4.5,
    soldServices: 13,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Qodri Akbar",
    specialty: "Spesialis AC",
    location: "Samarinda",
    rating: 4.8,
    soldServices: 28,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Rendi Yudha",
    specialty: "Spesialis AC",
    location: "Banjarmasin",
    rating: 4.6,
    soldServices: 17,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Sandi Putra",
    specialty: "Spesialis AC",
    location: "Batam",
    rating: 4.7,
    soldServices: 24,
  ));
  list.add(ServiceModel(
    imagePath: "assets/images/service-ac.jpg",
    name: "Taufik Rahman",
    specialty: "Spesialis AC",
    location: "Pekanbaru",
    rating: 4.9,
    soldServices: 29,
  ));
  return list;
}
