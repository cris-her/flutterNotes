import 'package:flutter/material.dart';
import 'package:all_sensors2/all_sensors2.dart';

void main() => runApp(PianoRoad());

class PianoRoad extends StatefulWidget {
  @override
  State<PianoRoad> createState() => _PianoRoadState();
}

class _PianoRoadState extends State<PianoRoad> {
  List<double> accelerometer = [0.0, 0.0, 0.0];
  GlobalKey _key = GlobalKey();
  double carSize = 1.0;
  Map<String, double> carPosition = {"x": 0.0, "y": 0.0};

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        carPosition["x"] = MediaQuery.of(_key.currentContext!).size.width -
            (MediaQuery.of(_key.currentContext!).size.width * 0.80);
        carPosition["y"] =
            MediaQuery.of(_key.currentContext!).size.height - 140;
      });
    });

    accelerometerEvents?.listen((event) {
      setState(() {
        accelerometer = [event.x, event.y, event.z];

        double deltaX = 0;
        double deltaY = 0;

        if (event.y.abs() > event.x.abs()) {
          deltaY = event.y.toInt() * 10;
        } else {
          deltaX = -event.x.toInt() * 10;
        }

        Offset newPosition = Offset(
          carPosition["x"]! + deltaX,
          carPosition["y"]! + deltaY,
        );

        updateCarPosition(_key.currentContext!, newPosition, deltaX);
      });
    });
  }

  void updateCarPosition(
      BuildContext context, Offset newPosition, double rotation) {
    setState(() {
      double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;

      carPosition["x"] = newPosition.dx;
      carPosition["y"] = newPosition.dy;

      if (carPosition["x"]! < 50) {
        carPosition["x"] = 50;
      } else if (carPosition["x"]! > width - 200) {
        carPosition["x"] = width - 200;
      }

      carSize = (carPosition["y"]! > height - 100)
          ? 1.0 - ((carPosition["y"]! - height) / (height - 150))
          : 1.0 + ((carPosition["y"]! - height) / (height - 150));

      if (carPosition["y"]! < (height / 2)) {
        carPosition["y"] = (height / 2);
      } else if (carPosition["y"]! > height - 130) {
        carPosition["y"] = height - 130;
      }
    });

    setState(() {
      accelerometer = [rotation, 0.0, 0.0];
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Builder(builder: (context) {
            return Stack(
              children: [
                Image.network(
                  'https://i.gifer.com/fxyK.gif',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                // Car image
                Positioned(
                  key: _key,
                  left: carPosition["x"],
                  top: carPosition["y"],
                  child: GestureDetector(
                    child: Transform.scale(
                      scale: carSize.clamp(0.1, 1.0),
                      child: Transform.rotate(
                        angle: accelerometer[0] * 0.01,
                        child: Image.asset(
                          'assets/car.png',
                          width: 150.0,
                          height: 150.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    onPanUpdate: (details) {
                      Offset newPosition = Offset(
                        carPosition["x"]! + details.delta.dx,
                        carPosition["y"]! + details.delta.dy,
                      );
                      updateCarPosition(context, newPosition, details.delta.dx);
                    },
                  ),
                ),
              ],
            );
          }), // This trailing comma makes auto-formatting nicer for build methods.
        ),
      );
}
