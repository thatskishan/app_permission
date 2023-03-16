import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckStatus extends StatefulWidget {
  const CheckStatus({Key? key}) : super(key: key);

  @override
  State<CheckStatus> createState() => _CheckStatusState();
}

class _CheckStatusState extends State<CheckStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/images/permission_status.jpg"),
            Center(
                child: Text(
              "Now you can access the App",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Colors.indigoAccent,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
