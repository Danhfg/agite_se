import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String ticket = '';
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(-5.7842, -35.2000),
    zoom: 11.5,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Atividades e Eventos"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: readQRCode,
          )
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        markers: {
          Marker(
            markerId: MarkerId('a3'),
            position: LatLng(-5.8842, -35.2000),
            infoWindow: InfoWindow(title: "Tênis"),
          ),
          Marker(
            markerId: MarkerId('a4'),
            position: LatLng(-5.8842, -35.2100),
            infoWindow: InfoWindow(title: "Pokemon GO"),
          ),
          Marker(
            markerId: MarkerId('a1'),
            position: LatLng(-5.7842, -35.2222),
            infoWindow: InfoWindow(title: "Caminhada matinal"),
          ),
          Marker(
            markerId: MarkerId('a2'),
            position: LatLng(-5.7842, -35.2000),
            infoWindow: InfoWindow(title: "Calistenia"),
          ),
          Marker(
            markerId: MarkerId('e1'),
            position: LatLng(-5.7141, -35.2251),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueAzure),
            infoWindow: InfoWindow(title: "Pokemon Go"),
          ),
          Marker(
            markerId: MarkerId('e2'),
            position: LatLng(-5.7121, -35.2291),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueAzure),
            infoWindow: InfoWindow(title: "Corrida em grupo"),
          ),
          Marker(
            markerId: MarkerId('e3'),
            position: LatLng(-5.7121, -35.2391),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueAzure),
            infoWindow: InfoWindow(title: "Corrida em grupo"),
          ),
          Marker(
            markerId: MarkerId('e3'),
            position: LatLng(-5.7121, -35.2491),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueAzure),
            infoWindow: InfoWindow(title: "Corrida em grupo"),
          ),
        },
      ),
    );
  }

  void readQRCode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      "#FFFFFF",
      "Cancelar",
      true,
      ScanMode.QR,
    );
    setState(() => ticket = code != '-1' ? code : 'Não validado');
  }
}
