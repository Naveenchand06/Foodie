import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/utils/shadowstyles.dart';
import 'package:foodie/widgets/cards/detail_card.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const apiKey = 'AIzaSyBsgL7ymdYBG12nLBVDjlxsGjky-YkMxDM';

class LocationDetail extends StatefulWidget {
  @override
  _LocationDetailState createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container(child: MapScreen())),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                boxShadow: kDetailCardShadow,
              ),
              child: DetailCard(),
            )
          ],
        ),
      ),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialPosition = CameraPosition(target: LatLng(9.9252, 78.1198), zoom: 11.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapToolbarEnabled: false,
        myLocationButtonEnabled: false,
        initialCameraPosition: _initialPosition,
      ),
    );
  }
}
