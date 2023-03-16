import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraPermission extends StatefulWidget {
  const CameraPermission({Key? key}) : super(key: key);

  @override
  State<CameraPermission> createState() => _CameraPermissionState();
}

class _CameraPermissionState extends State<CameraPermission> {
  getCameraPermission({required BuildContext context}) async {
    PermissionStatus status = await Permission.camera.request();
    if (status.isGranted) {
      Navigator.of(context).pushNamed('location_permission');
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
              Image.asset("assets/images/camera_permission.jpg"),
              Text(
                "Please allow Camera permission to access the app.",
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
                        getCameraPermission(context: context);
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
