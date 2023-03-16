import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationPermission extends StatefulWidget {
  const LocationPermission({Key? key}) : super(key: key);

  @override
  State<LocationPermission> createState() => _LocationPermissionState();
}

class _LocationPermissionState extends State<LocationPermission> {
  getLocationPermission({required BuildContext context}) async {
    PermissionStatus status = await Permission.location.request();
    if (status.isGranted) {
      Navigator.of(context).pushNamed('check_status');
    } else {
      openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset("assets/images/location_permission.jpg"),
              Text(
                "Please allow Location permission to access the app.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.indigoAccent,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      onPressed: () {
                        getLocationPermission(context: context);
                      },
                      child: Text(
                        "Continue",
                        style: GoogleFonts.poppins(),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
