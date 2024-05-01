import 'package:flutter/material.dart';
import 'package:flutter_masterclass/delivery/address_book.dart';
import 'package:flutter_masterclass/delivery/deliver_to.dart';
import 'package:flutter_masterclass/delivery/delivery.dart';
import 'package:flutter_masterclass/home/home.dart';
import 'package:flutter_masterclass/store_pickup/store_pickup.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', routes: {
      '/': (context) => const Home(),
      '/delivery': (context) => const Delivery(),
      '/deliveryTo': (context) => const DeliverTo(),
      '/addressBook': (context) => const AdddressBook(),
      '/storePickup': (context) => const StorePickup(),
    }
  ));
}
