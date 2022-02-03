
import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("M O B I L E"), centerTitle: true),
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                height: 200.0,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 5.0),
                      height: 50.0,
                      color: Colors.grey,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

// class MobileBody extends StatefulWidget {
//   const MobileBody({Key? key, this.title}) : super(key: key);
//
//   final String? title;
//
//   @override
//   _MobileBodyState createState() => _MobileBodyState();
// }
//
// class _MobileBodyState extends State<MobileBody> {
//   static const int _snakeRows = 20;
//   static const int _snakeColumns = 20;
//   static const double _snakeCellSize = 10.0;
//
//   List<double>? _accelerometerValues;
//   List<double>? _userAccelerometerValues;
//   List<double>? _gyroscopeValues;
//   List<double>? _magnetometerValues;
//   final _streamSubscriptions = <StreamSubscription<dynamic>>[];
//
//   @override
//   Widget build(BuildContext context) {
//     final accelerometer =
//         _accelerometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
//     final gyroscope =
//         _gyroscopeValues?.map((double v) => v.toStringAsFixed(1)).toList();
//     final userAccelerometer = _userAccelerometerValues
//         ?.map((double v) => v.toStringAsFixed(1))
//         .toList();
//     final magnetometer =
//         _magnetometerValues?.map((double v) => v.toStringAsFixed(1)).toList();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sensor Example'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Center(
//             child: DecoratedBox(
//               decoration: BoxDecoration(
//                 border: Border.all(width: 1.0, color: Colors.black38),
//               ),
//               child: SizedBox(
//                 height: _snakeRows * _snakeCellSize,
//                 width: _snakeColumns * _snakeCellSize,
//                 child: Snake(
//                   rows: _snakeRows,
//                   columns: _snakeColumns,
//                   cellSize: _snakeCellSize,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text('Accelerometer: $accelerometer'),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text('UserAccelerometer: $userAccelerometer'),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text('Gyroscope: $gyroscope'),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text('Magnetometer: $magnetometer'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     for (final subscription in _streamSubscriptions) {
//       subscription.cancel();
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _streamSubscriptions.add(
//       accelerometerEvents.listen(
//         (AccelerometerEvent event) {
//           setState(() {
//             _accelerometerValues = <double>[event.x, event.y, event.z];
//           });
//         },
//       ),
//     );
//     _streamSubscriptions.add(
//       gyroscopeEvents.listen(
//         (GyroscopeEvent event) {
//           setState(() {
//             _gyroscopeValues = <double>[event.x, event.y, event.z];
//           });
//         },
//       ),
//     );
//     _streamSubscriptions.add(
//       userAccelerometerEvents.listen(
//         (UserAccelerometerEvent event) {
//           setState(() {
//             _userAccelerometerValues = <double>[event.x, event.y, event.z];
//           });
//         },
//       ),
//     );
//     _streamSubscriptions.add(
//       magnetometerEvents.listen(
//         (MagnetometerEvent event) {
//           setState(() {
//             _magnetometerValues = <double>[event.x, event.y, event.z];
//           });
//         },
//       ),
//     );
//   }
// }
//
// class Snake extends StatefulWidget {
//   Snake({Key? key, this.rows = 20, this.columns = 20, this.cellSize = 10.0})
//       : super(key: key) {
//     assert(10 <= rows);
//     assert(10 <= columns);
//     assert(5.0 <= cellSize);
//   }
//
//   final int rows;
//   final int columns;
//   final double cellSize;
//
//   @override
//   // ignore: no_logic_in_create_state
//   State<StatefulWidget> createState() => SnakeState(rows, columns, cellSize);
// }
//
// class SnakeBoardPainter extends CustomPainter {
//   SnakeBoardPainter(this.state, this.cellSize);
//
//   GameState? state;
//   double cellSize;
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final blackLine = Paint()..color = Colors.black;
//     final blackFilled = Paint()
//       ..color = Colors.black
//       ..style = PaintingStyle.fill;
//     canvas.drawRect(
//       Rect.fromPoints(Offset.zero, size.bottomLeft(Offset.zero)),
//       blackLine,
//     );
//     for (final p in state!.body) {
//       final a = Offset(cellSize * p.x, cellSize * p.y);
//       final b = Offset(cellSize * (p.x + 1), cellSize * (p.y + 1));
//
//       canvas.drawRect(Rect.fromPoints(a, b), blackFilled);
//     }
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
//
// class SnakeState extends State<Snake> {
//   SnakeState(int rows, int columns, this.cellSize) {
//     state = GameState(rows, columns);
//   }
//
//   double cellSize;
//   GameState? state;
//   AccelerometerEvent? acceleration;
//   late StreamSubscription<AccelerometerEvent> _streamSubscription;
//   late Timer _timer;
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(painter: SnakeBoardPainter(state, cellSize));
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _streamSubscription.cancel();
//     _timer.cancel();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _streamSubscription =
//         accelerometerEvents.listen((AccelerometerEvent event) {
//       setState(() {
//         acceleration = event;
//       });
//     });
//
//     _timer = Timer.periodic(const Duration(milliseconds: 200), (_) {
//       setState(() {
//         _step();
//       });
//     });
//   }
//
//   void _step() {
//     final newDirection = acceleration == null
//         ? null
//         : acceleration!.x.abs() < 1.0 && acceleration!.y.abs() < 1.0
//             ? null
//             : (acceleration!.x.abs() < acceleration!.y.abs())
//                 ? math.Point<int>(0, acceleration!.y.sign.toInt())
//                 : math.Point<int>(-acceleration!.x.sign.toInt(), 0);
//     state!.step(newDirection);
//   }
// }
//
// class GameState {
//   GameState(this.rows, this.columns) {
//     snakeLength = math.min(rows, columns) - 5;
//   }
//
//   int rows;
//   int columns;
//   late int snakeLength;
//
//   List<math.Point<int>> body = <math.Point<int>>[const math.Point<int>(0, 0)];
//   math.Point<int> direction = const math.Point<int>(1, 0);
//
//   void step(math.Point<int>? newDirection) {
//     var next = body.last + direction;
//     next = math.Point<int>(next.x % columns, next.y % rows);
//
//     body.add(next);
//     if (body.length > snakeLength) body.removeAt(0);
//     direction = newDirection ?? direction;
//   }
// }
