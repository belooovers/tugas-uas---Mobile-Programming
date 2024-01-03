import 'package:flutter/material.dart';

class CarItem {
  final String title;
  final double price;
  final String path;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String transmision;

  CarItem(
      {required this.title,
      required this.price,
      required this.path,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.transmision});
}

CarsList allCars = CarsList(cars: [
  CarItem(
      title: 'Honda Civic 2018',
      price: 100,
      color: 'Abu-Abu',
      gearbox: '4',
      transmision: 'Manual',
      fuel: '1L : 8Km',
      brand: 'Honda',
      path: 'images/assets/car1.jpg'),
  CarItem(
      title: 'Land Rover Evoque 2016',
      price: 200,
      color: 'Abu-Abu',
      gearbox: '6',
      transmision: 'Manual',
      fuel: '1L : 9Km',
      brand: 'Land Rover',
      path: 'images/assets/car2.jpg'),
  CarItem(
      title: 'Mercedes Benz SLS 2019',
      price: 200,
      color: 'Merah',
      gearbox: '5',
      transmision: 'Manual',
      fuel: '1L : 6Km',
      brand: 'Mercedes',
      path: 'images/assets/car3.jpg'),
  CarItem(
      title: 'Audi A6 2018',
      price: 150,
      color: 'Abu-Abu',
      gearbox: '5',
      transmision: 'Manual',
      fuel: '1L : 6Km',
      brand: 'Audi',
      path: 'images/assets/car4.jpg'),
  CarItem(
      title: 'Jaguar XF 2019',
      price: 200,
      color: 'Putih',
      gearbox: '6',
      transmision: 'Manual',
      fuel: '1L : 10Km',
      brand: 'Jaguar',
      path: 'images/assets/car5.jpg'),
  CarItem(
      title: 'BMW E-1 2018',
      price: 120,
      color: 'Abu-Abu',
      gearbox: '6',
      transmision: 'Manual',
      fuel: '1L : 7Km',
      brand: 'BMW',
      path: 'images/assets/car6.jpg'),
]);

class CarsList {
  List<CarItem> cars;

  CarsList({required this.cars});
}
