import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MicrophonePermission extends StatefulWidget {
  const MicrophonePermission({super.key});

  @override
  State<MicrophonePermission> createState() => _MicrophonePermissionState();
}

class _MicrophonePermissionState extends State<MicrophonePermission> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Sample App'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('Sydney'),
            position: LatLng(-33.86, 151.20),
          ),
        },
      ),
    );
  }
}
