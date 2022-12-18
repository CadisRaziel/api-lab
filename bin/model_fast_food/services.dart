
import 'dart:convert';

import 'customers_queue.dart';
import 'delivery.dart';
import 'in_office_delivery.dart';
import 'scango.dart';
import 'table_reservations.dart';
import 'takeaway.dart';

class Services {
  Delivery delivery;
  Takeaway takeaway;
  TableReservations tableReservations;
  CustomersQueue customersQueue;
  Scango scango;
  InOfficeDelivery inOfficeDelivery;

  Services({
    required this.delivery,
    required this.takeaway,
    required this.tableReservations,
    required this.customersQueue,
    required this.scango,
    required this.inOfficeDelivery,
  });

  Map<String, dynamic> toMap(){
    return {
      "delivery": delivery.toMap(),
      "takeaway": takeaway.toMap(),
      "tableReservations": tableReservations.toMap(),
      "customersQueue": customersQueue.toMap(),
      "scango": scango.toMap(),
      "inOfficeDelivery": inOfficeDelivery.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Services.fromMap(Map<String, dynamic> map) {
    return Services(
      delivery: Delivery.fromMap(map["delivery"] ?? <String,dynamic>{}),
      takeaway: Takeaway.fromMap(map["takeaway"] ?? <String,dynamic>{}),
      tableReservations: TableReservations.fromMap(map["tableReservations"] ?? <String,dynamic>{}),
      customersQueue: CustomersQueue.fromMap(map["customersQueue"] ?? <String,dynamic>{}),
      scango: Scango.fromMap(map["scango"] ?? <String,dynamic>{}),
      inOfficeDelivery: InOfficeDelivery.fromMap(map["inOfficeDelivery"] ?? <String,dynamic>{}),
    );
  }

  factory Services.fromJson(String json) => Services.fromMap(jsonDecode(json));


  @override
  String toString() {
    return 'Services(delivery: $delivery, takeaway: $takeaway, tableReservations: $tableReservations, customersQueue: $customersQueue, scango: $scango, inOfficeDelivery: $inOfficeDelivery)';
  }
}
