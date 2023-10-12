import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TestApp extends StatefulWidget {
  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  late GoogleMapController _controller;

  final LatLng _center = const LatLng(37.4219999, -122.0862462);  // Mountain View, CA 的坐標

  Set<Marker> _createMarker() {
    return {
      Marker(
        markerId: MarkerId("carIcon"),
        position: _center,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),  // 使用藍色標記代表車子
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TestApp with Google Map')),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15,
        ),
        markers: _createMarker(),
      ),
    );
  }
}
