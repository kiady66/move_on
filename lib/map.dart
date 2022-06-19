import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import 'constantes.dart';

void main() => runApp(Map());

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {

  final Set<Marker> markers = new Set();

  static const LatLng showLocationQuinconces = const LatLng(44.84546, -0.57339);
  static const LatLng showLocationJP = const LatLng(44.848207, -0.578130);
  static const LatLng showLocationCailhau = const LatLng(44.8387526, -0.5684901);
  static const LatLng showLocationSC = const LatLng(44.8398, -0.574183);

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(44.83663, -0.58105),
    zoom: 16,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 60,
        title: Text("Map"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 105, 94, 245),Color.fromARGB(255, 105, 94, 245)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              )
          ),
        ),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        markers: getmarkers(),
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  Set<Marker> getmarkers() { //markers to place on map
    setState(() {
      markers.add(Marker( //add first marker
        markerId: MarkerId(showLocationQuinconces.toString()),
        position: showLocationQuinconces, //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Quinconces',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add second marker
        markerId: MarkerId(showLocationJP.toString()),
        position: showLocationJP, //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Jardin Public',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocationSC.toString()),
        position: showLocationSC, //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Rue Sainte-Catherine',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocationCailhau.toString()),
        position: showLocationCailhau, //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Porte Cailhau',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //add more markers here
    });

    return markers;
  }
}
