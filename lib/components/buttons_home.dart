import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonsHome extends StatefulWidget {
  const ButtonsHome({Key? key}) : super(key: key);

  @override
  State<ButtonsHome> createState() => _ButtonsHomeState();
}

class _ButtonsHomeState extends State<ButtonsHome> {
   bool _textButton = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60.0, left: 60.0, right: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.transparent,
                ),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: _textButton ? 'added to my list' : 'removed from my list',
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                  setState(() {
                    _textButton = !_textButton ;
                  });

                },
                child: Icon(
                  _textButton ? Icons.add : Icons.check,
                  color: Colors.white,
                ),
              ),
              Text(
                'My List',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 101,
            height: 38,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black87,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow),
                  Text(
                    ' Play',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              Text(
                'Info',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
