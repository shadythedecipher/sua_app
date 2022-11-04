// ignore_for_file: avoid_print, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:sua_app/constants/GlobalVariables.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:location/location.dart';

import '../../../commonWidget/checkoutLOcation.dart';

class LocationSearchUi extends StatefulWidget {
  const LocationSearchUi({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  State<StatefulWidget> createState() => LocationSearch();
}

class LocationSearch extends State<LocationSearchUi> {
  late List<Model> _data;
  // ignore: unused_field
  late MapLatLng _markerPosition;
  final MapZoomPanBehavior _zoomPanBehavior = MapZoomPanBehavior(
    zoomLevel: 60,
    enablePinching: true,
    enablePanning: true,
    enableDoubleTapZooming: true,
  );
  late LocationData _locationData;
  final MapTileLayerController _controller = MapTileLayerController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfMaps(
        layers: [
          MapTileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            // zoomPanBehavior: _mapZoomPanBehavior,
            controller: _controller,
            initialFocalLatLng: const MapLatLng(-6.8282725, 37.67408),
            zoomPanBehavior: _zoomPanBehavior,
            markerBuilder: (BuildContext context, int index) {
              return MapMarker(
                latitude: _data[index].latitude!,
                longitude: _data[index].longitude!,
                size: const Size(18, 18),
                alignment: Alignment.center,
                offset: const Offset(0, 9),
                iconColor: Colors.green[200],
                iconStrokeColor: Colors.green[900],
                iconStrokeWidth: 2,
                //   latitude: _markerPosition.latitude,
                //   longitude: _markerPosition.longitude,
                //   child: const Icon(
                //   Icons.location_on,
                //   color: Colors.red,
                //   size: 20,),
              );
            },
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // ignore: duplicate_ignore
            onPressed: () async {
              Location location = Location();

              bool _serviceEnabled;
              PermissionStatus _permissionGranted;
              _serviceEnabled = await location.serviceEnabled();
              if (!_serviceEnabled) {
                _serviceEnabled = await location.requestService();
                if (!_serviceEnabled) {
                  return;
                }
              }

              _permissionGranted = await location.hasPermission();
              if (_permissionGranted == PermissionStatus.denied) {
                _permissionGranted = await location.requestPermission();
                if (_permissionGranted != PermissionStatus.granted) {
                  return;
                }
              }
              _locationData = await location.getLocation();
              _data = <Model>[
                Model('Brazil', _locationData.latitude, _locationData.longitude)
              ];
              // GeoCode geoCode = GeoCode();
              // Address address = await geoCode.reverseGeocoding(latitude: _locationData.latitude!, longitude: _locationData.longitude!);
              // ignore: avoid_print
              print(_data.length);
              print(_data[0].latitude!);
              print(_data[0].longitude!);
              _controller.insertMarker(0);
              _zoomPanBehavior.focalLatLng =
                  MapLatLng(_data[0].latitude!, (_data[0].longitude!));
            },
            child: const Icon(
              Icons.my_location,
              color: Colors.black87,
            ),
            backgroundColor: Colors.white,
            heroTag: "btn1",
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () => Get.to(
              checkoutLocation(
                category: widget.category,
                long: _data[0].longitude,
                lat: _data[0].latitude,
              ),
            ),
            child: const Icon(
              Icons.airline_stops_rounded,
              color: Colors.white,
            ),
            backgroundColor: Colors.green,
            heroTag: "btn2",
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

// ignore: unused_element
class _DetailsPage extends StatelessWidget {
  const _DetailsPage({this.includeMarkAsDoneButton = true});

  final bool includeMarkAsDoneButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details page'),
        actions: <Widget>[
          if (includeMarkAsDoneButton)
            IconButton(
              icon: const Icon(Icons.done),
              onPressed: () => Navigator.pop(context, true),
              tooltip: 'Mark as done',
            )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.black38,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Image.asset(
                "assets/images/suaLogo.png",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Title',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.black54,
                        fontSize: 30.0,
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  GlobalVariables.loremIpsumParagraph,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.black54,
                        height: 1.5,
                        fontSize: 16.0,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Model {
  const Model(
    this.className,
    this.latitude,
    this.longitude,
  );

  final String className;
  final double? latitude;
  final double? longitude;
}

