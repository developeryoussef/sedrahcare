// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sedrahcare/core/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:sedrahcare/view/screens/loginscreen.dart';
import '../../core/functions/alertwithfield.dart';
import '../../core/functions/showalert.dart';
import '../widgets/categories_part.dart';
import '../widgets/category_widget.dart';
import '../widgets/home_call_doctor.dart';
import '../widgets/home_doctor_visit.dart';
import '../widgets/home_searchbutton.dart';
import '../widgets/row_widgets.dart';
import '../widgets/scrollable_adverse_widget.dart';
import '../widgets/security_button.dart';
import 'bookingscreen.dart';
import 'my_accountscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class MapScreen extends StatefulWidget {
  final String? name;
  final String? imageurl;
  final String? category;
  final double? doctorrate;
  final double? price;
  final List<String> appointmenttimes;
  const MapScreen(
      {super.key,
      required this.imageurl,
      required this.category,
      required this.name,
      required this.appointmenttimes,
      required this.doctorrate,
      required this.price});
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final mapController = MapController(initMapWithUserPosition: true);
  GeoPoint? currentAdded;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainColor,
        child: Icon(Icons.arrow_back_ios_outlined),
        onPressed: () {
          mapController
              .getCurrentPositionAdvancedPositionPicker()
              .then((value) {
            print(value.latitude);
            print(value.longitude);
          });
          Get.to(BookingScreen(
            geoPoint:
                GeoPoint(latitude: 27.138927387263, longitude: 27.72682736287),
            appointmenttimes: widget.appointmenttimes,
            category: widget.category,
            doctorrate: widget.doctorrate,
            name: widget.name,
            imageurl: widget.imageurl,
            price: widget.price,
          ));
        },
      ),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('اختيار موقعك'),
      ),
      body: OSMFlutter(
        initZoom: 15,
        mapIsLoading: Center(
          child: CircularProgressIndicator(
            color: mainColor,
          ),
        ),
        trackMyPosition: true,
        controller: mapController,
        userLocationMarker: UserLocationMaker(
          personMarker: MarkerIcon(
            icon: Icon(
              Icons.location_on,
              color: seconderyColor,
              size: 150,
            ),
          ),
          directionArrowMarker: MarkerIcon(
            icon: Icon(
              Icons.double_arrow,
              size: 48,
            ),
          ),
        ),
        markerOption: MarkerOption(
            defaultMarker: MarkerIcon(
          icon: Icon(
            Icons.add_location,
            color: seconderyColor,
            size: 130,
          ),
        )),
        roadConfiguration: RoadOption(roadColor: Colors.blueGrey.shade700),
        isPicker: true,
        onMapIsReady: (isReady) async {
          if (isReady) {
            await mapController.currentLocation();
          }
        },
      ),
    );
  }
}
