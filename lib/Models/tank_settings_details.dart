import 'package:flutter/material.dart';
import 'package:water_monster_v2/Models/qr.dart';
import 'package:water_monster_v2/Models/tank.dart';
import '../Widgets/tankheighttextfield.dart';
import '../Widgets/tanknametextfield.dart';
import '../Widgets/tanksettingsave_btn.dart';
import '../Widgets/tanksizetextfield.dart';

class TankSettingsDetails extends StatefulWidget {
  const TankSettingsDetails({super.key});

  @override
  State<TankSettingsDetails> createState() => _TankSettingsDetailsState();
}

class _TankSettingsDetailsState extends State<TankSettingsDetails> {
  double val = 20;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(
                          4.0,
                          4.0,
                        ),
                      ),
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(
                          -4.0,
                          -4.0,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(8.0)),
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text('Information',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 30,
                              )),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(8.0)),
                      const tanknametextfield(),
                      const Padding(padding: EdgeInsets.all(8.0)),
                      const tanksizetextfield(),
                      const Padding(padding: EdgeInsets.all(8.0)),
                      const taskheighttextfield(),
                      const Padding(padding: EdgeInsets.all(8.0)),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.all(8.0)),
                          Text('Level Alert($val%)',
                              style: const TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 20,
                              )),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(8.0)),
                      Slider(
                        value: val,
                        min: 0,
                        max: 100,
                        label: val.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            val = value.toDouble().truncateToDouble();
                          });
                        },
                      ),
                      const Padding(padding: EdgeInsets.all(8.0)),
                      const tanksettingsave_btn()
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                const Text('Scan the QR code to connect other device',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Nunito',
                    )),
                const QRCODE(value: 'New Tank', width: 200)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
