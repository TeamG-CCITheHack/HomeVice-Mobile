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
  return list;
}
